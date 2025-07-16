--Fast Bot Cycle
--By Ryason55

--Bots in the bottom half will get booted for new ones
--You can set particular skins to be excluded from this, so you can mill through bots until you get a bot lineup you like
--Additionally you can force a bot to cycle out regardless of their placing
--This is intended for online play, but nothing stopping you from using it in Grand Prix

local skincount = 0
local skinexists = {}

--Doing it this way so we're only iterating over the table once
local enumerateskins =
  function(skinname)
    if not (skincount == #skins+1) then
      skincount = #skins+1
      for s = 1,#skins,1 do
        local skindata = skins[s-1]
        if skindata then
          skinexists[ skindata.name ] = true
        end
      end
    end
  end


local botcycle_blacklist = {} --Skins added to this won't be subject to early ejection, handled through the console command

addHook("NetVars", function(net)
	botcycle_blacklist = net(botcycle_blacklist)
end)


local blacklistcommand =
  function(player,skinname)
    if skinname and type(skinname) == "string" then
      enumerateskins()
      skinname = string.lower(skinname)
      if skinexists[skinname] then
        local valid = true
        for i = 1,#botcycle_blacklist,1 do
          if botcycle_blacklist[i] == skinname then
            CONS_Printf(player, "'"..skinname.."' is already in the exceptions list")
            valid = false
            break
          end
        end
        if valid then
          table.insert(botcycle_blacklist,skinname)
          print("'"..skinname.."' added to Fast Bot Cycle exceptions")
        end
      else
        CONS_Printf(player, "'"..skinname.."' is not a valid skin")
      end
    else
      CONS_Printf(player, "Please enter a valid skin name")
    end
  end

COM_AddCommand("botcycle_addexception", blacklistcommand, COM_ADMIN)


local forcecycleallcommand =
  function(player)
    local count = 0
    for plr in players.iterate do
      if plr and plr.valid and plr.bot then
        plr.botcycle_force = true
        count = count + 1
      end
    end
    if count <= 0 then
      CONS_Printf(player, "Could not find any bots to cycle out")
    else
      print("All "..count.." bot(s) will be cycled out at the end of the race")
    end
  end

COM_AddCommand("botcycle_forcecycleallbots", forcecycleallcommand, COM_ADMIN)


local forcecyclecommand =
  function(player,skinname)
    if skinname and type(skinname) == "string" then
      enumerateskins()
      skinname = string.lower(skinname)
      if skinexists[skinname] then
        local count = 0
        for plr in players.iterate do
          if plr and plr.valid and plr.bot and plr.skin and skins[plr.skin] and skins[plr.skin].name == skinname then
            plr.botcycle_force = true
            count = count + 1
          end
        end
        if count <= 0 then
          CONS_Printf(player, "Could not find any bots with the skin '"..skinname.."'")
        elseif count == 1 then
          print("Bot with skin '"..skinname.."' will be cycled out at the end of the race")
        else
          print(count.." bots with skin \""..skinname.."\" will be cycled out at the end of the race")
        end
      else
        CONS_Printf(player, "\""..skinname.."\" is not a valid skin")
      end
    else
      CONS_Printf(player, "Please enter a valid skin name")
    end
  end

COM_AddCommand("botcycle_forcecyclebot", forcecyclecommand, COM_ADMIN)


local getplayercount =
  function()
    local plrcount = 0 --Get how many racers are valid in the race
    for plr in players.iterate do
      if plr and plr.valid and not plr.spectator then
        plrcount = plrcount + 1
      end
    end
    return plrcount
  end

addHook("ThinkFrame", function()
  for plr in players.iterate do
    if plr and plr.valid then
      if leveltime <= starttime then --Reset these at match start
        plr.botcycle_handled = false
      elseif plr.bot and (plr.exiting or (plr.pflags & PF_NOCONTEST)) and ((not plr.botcycle_handled) or plr.botcycle_force) then --Bot finishing the race
        plr.botcycle_handled = true
        if plr.botcycle_force then --Bot is forced to cycle out
          plr.botcycle_force = false
          if not (plr.pflags & PF_NOCONTEST) then
            plr.botcycle_lastscore = plr.score
            plr.pflags = plr.pflags | PF_NOCONTEST
          end
        elseif (not (plr.pflags & PF_NOCONTEST)) and (plr.position > getplayercount()/2) then --Bot is in the bottom half
          local valid = true
          if plr.skin and skins[plr.skin] then
            local skinname = skins[plr.skin].name
            for i = 1,#botcycle_blacklist,1 do
              if skinname == botcycle_blacklist[i] then
                valid = false
                break
              end
            end
          end
          if valid then
            plr.botcycle_lastscore = plr.score
            plr.pflags = plr.pflags | PF_NOCONTEST
          end
        end
      end
    end
  end
end)

addHook("IntermissionThinker", function()
  for plr in players.iterate do
    --if the bot was cycled out, give them back their old score
    if plr and plr.valid and plr.bot and plr.botcycle_lastscore and (plr.score == 0) then
      plr.score = plr.botcycle_lastscore
      plr.botcycle_lastscore = nil
    end
  end
end)