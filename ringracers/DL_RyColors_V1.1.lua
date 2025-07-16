--Ry's assortment of colors
--By Ryason55


local ramps_pride = { --Ramps, Chat/Name Color, Reduced VFX conversion
  { {0,48,210,32,34,36,38,39,41,42,44,45,46,47,30,31},              V_REDMAP,    nil }, --red
  { {0,208,48,209,210,32,32,33,34,34,36,38,41,45,47,31},            V_REDMAP,      1 },
  { {0,208,49,50,51,53,53,56,58,68,69,79,237,239,29,31},            V_ORANGEMAP, nil }, --orange
  { {0,1,208,48,49,49,50,51,51,52,53,55,68,69,239,31},              V_ORANGEMAP,   3 },
  { {0,80,81,83,72,73,74,75,76,76,77,78,79,238,110,31},             V_YELLOWMAP, nil }, --yellow
  { {0,1,80,81,81,82,83,72,72,72,73,74,76,78,238,31},               V_YELLOWMAP,   5 },
  { {0,4,8,91,101,104,116,117,117,117,118,118,119,111,111,31},      V_GREENMAP,  nil }, --green
  { {0,2,4,6,8,90,91,92,101,103,104,116,117,118,110,31},            V_GREENMAP,    7 },
  { {0,144,146,147,148,135,135,136,136,137,137,138,175,139,254,31}, V_BLUEMAP,   nil }, --blue
  { {0,144,145,145,146,147,147,148,149,135,136,137,137,138,139,31}, V_BLUEMAP,     9 },
  { {0,3,192,193,194,185,185,185,186,186,187,187,187,29,30,31},     V_PURPLEMAP, nil }, --purple
  { {0,2,3,5,192,192,193,194,194,195,185,185,186,187,28,31},        V_PURPLEMAP,  11 },
}

local ramps_trans = {
  { {0,1,128,128,129,129,130,131,132,141,141,142,137,138,28,31},  V_SKYMAP,  nil }, --cyan
  { {0,1,144,128,128,129,129,129,130,130,130,131,141,142,138,31}, V_SKYMAP,    1 }, --cyan flash
  { {0,0,1,1,1,2,2,2,3,3,3,4,9,16,23,31},                         0,           4 }, --white flash
  { {0,0,1,1,2,2,3,3,5,9,12,16,20,23,27,31},                      0,         nil }, --white
  { {0,0,1,1,1,2,2,2,3,3,3,4,9,16,23,31},                         0,           4 }, --white flash repeat (need for symmetry)
  { {0,1,252,252,208,208,200,200,209,209,209,201,211,245,24,31},  V_PINKMAP,   7 }, --pink flash
  { {0,1,252,208,200,200,209,209,210,211,242,245,248,24,28,31},   V_PINKMAP, nil }, --pink
}

local ramps_bi = {
  { {0,144,145,170,170,171,136,137,137,137,138,138,139,139,254,31}, V_BLUEMAP,   nil }, --blue
  { {0,2,3,145,146,170,170,171,171,172,136,136,137,138,139,31},     V_BLUEMAP,     1 }, --blue flash
  { {0,1,2,200,200,160,192,192,192,193,193,193,195,197,199,31},     V_PURPLEMAP,   4 }, --purple flash
  { {0,252,200,200,192,192,193,193,194,195,196,197,198,199,28,31},  V_PURPLEMAP, nil }, --purple
  { {0,1,2,200,200,160,192,192,192,193,193,193,195,197,199,31},     V_PURPLEMAP,   4 }, --purple flash repeat (need for symmetry)
  { {0,252,200,200,201,201,202,202,203,203,204,204,204,207,187,31}, V_PINKMAP,     7 }, --pink flash
  { {0,252,200,201,202,203,204,204,205,206,207,186,187,187,29,31},  V_PINKMAP,   nil }, --pink dark
}

local ramps_neapolitan = {
  { {0,252,200,209,201,210,211,203,203,214,206,207,198,199,28,31}, V_PINKMAP,  nil }, --strawberry
  { {0,1,208,200,200,209,201,201,210,211,211,203,214,207,199,31},  V_PINKMAP,    1 }, --strawberry flash
  { {0,1,80,80,80,81,83,85,241,242,244,247,23,25,28,31},           0,          nil }, --vanilla
  { {0,0,1,1,80,80,80,80,80,81,89,241,244,248,26,31},              0,            3 }, --vanilla flash
  { {0,3,5,240,241,224,228,230,231,233,235,237,238,239,29,31},     V_BROWNMAP, nil }, --chocolate
  { {0,2,3,5,6,240,240,241,242,225,227,230,233,237,239,31},        V_BROWNMAP,   5 }, --chocolate flash
}

local ramps_energy = {
  { {0,88,96,98,112,113,114,114,115,116,116,117,118,119,111,31}, V_GREENMAP,  nil }, --green
  { {0,3,88,89,96,97,112,112,113,114,115,116,117,118,119,31},    V_GREENMAP,    1 }, -- green flash
  { {0,88,89,90,189,189,190,190,191,104,105,107,108,109,111,31}, V_GREENMAP,  nil }, --lime
  { {0,80,88,88,89,89,90,189,189,190,102,104,106,108,110,31},    V_GREENMAP,    3 }, --lime flash
  { {0,81,83,72,73,74,75,75,76,77,78,79,79,239,110,31},          V_YELLOWMAP, nil }, --yellow
  { {0,80,81,82,83,72,72,73,73,75,76,77,78,79,239,31},           V_YELLOWMAP,   5 }, --yellow flash
  { {0,48,50,52,54,55,57,58,68,69,70,70,237,239,111,31},         V_ORANGEMAP, nil }, --orange
  { {0,208,48,49,50,51,52,53,55,57,59,69,70,237,29,31},          V_ORANGEMAP,   7 }, --orange flash
  { {0,209,32,34,35,37,38,40,41,42,44,45,46,47,30,31},           V_REDMAP,    nil }, --red
  { {0,209,212,215,39,40,41,42,43,45,71,46,47,47,30,31},         V_REDMAP,      9 }, --red > dark red
  { {0,6,212,215,43,44,45,45,71,46,47,47,47,30,30,31},           V_REDMAP,    nil }, --dark red
  { {7,12,245,250,47,47,47,47,47,29,29,29,30,30,31,31},          V_REDMAP,     11 },--dark red > black
  { {15,18,21,24,27,27,28,28,28,29,29,29,30,30,31,31},           V_GRAYMAP,   nil }, --black (13)
}


freeslot("SKINCOLOR_PRIDECYCLE1")
freeslot("SKINCOLOR_PRIDECYCLE2")
freeslot("SKINCOLOR_PRIDECYCLE3")
freeslot("SKINCOLOR_PRIDECYCLE4")
freeslot("SKINCOLOR_PRIDECYCLE5")
freeslot("SKINCOLOR_PRIDECYCLE6")
freeslot("SKINCOLOR_TRANSCYCLE1")
freeslot("SKINCOLOR_TRANSCYCLE2")
freeslot("SKINCOLOR_BICYCLE1")
freeslot("SKINCOLOR_BICYCLE2")
freeslot("SKINCOLOR_NEAPOLITANCYCLE1")
freeslot("SKINCOLOR_NEAPOLITANCYCLE2")
freeslot("SKINCOLOR_NEAPOLITANCYCLE3")
freeslot("SKINCOLOR_ENERGYGAUGE")

skincolors[SKINCOLOR_PRIDECYCLE1] = { --Red
     name = "Pride-Cycle 1",
     ramp = ramps_pride[1][1],
     invcolor = SKINCOLOR_PRIDECYCLE4,
     invshade = 7,
     chatcolor = ramps_pride[1][2],
     accessible = true
}

skincolors[SKINCOLOR_PRIDECYCLE2] = { --Orange
     name = "Pride-Cycle 2",
     ramp = ramps_pride[3][1],
     invcolor = SKINCOLOR_PRIDECYCLE5,
     invshade = 7,
     chatcolor = ramps_pride[3][2],
     accessible = true
}

skincolors[SKINCOLOR_PRIDECYCLE3] = { --Yellow
     name = "Pride-Cycle 3",
     ramp = ramps_pride[5][1],
     invcolor = SKINCOLOR_PRIDECYCLE6,
     invshade = 7,
     chatcolor = ramps_pride[5][2],
     accessible = true
}

skincolors[SKINCOLOR_PRIDECYCLE4] = { --Green
     name = "Pride-Cycle 4",
     ramp = ramps_pride[7][1],
     invcolor = SKINCOLOR_PRIDECYCLE1,
     invshade = 7,
     chatcolor = ramps_pride[7][2],
     accessible = true
}

skincolors[SKINCOLOR_PRIDECYCLE5] = { --Blue
     name = "Pride-Cycle 5",
     ramp = ramps_pride[9][1],
     invcolor = SKINCOLOR_PRIDECYCLE2,
     invshade = 7,
     chatcolor = ramps_pride[9][2],
     accessible = true
}

skincolors[SKINCOLOR_PRIDECYCLE6] = { --Purple
     name = "Pride-Cycle 6",
     ramp = ramps_pride[11][1],
     invcolor = SKINCOLOR_PRIDECYCLE3,
     invshade = 7,
     chatcolor = ramps_pride[11][2],
     accessible = true
}

skincolors[SKINCOLOR_TRANSCYCLE1] = { --Light Blue
     name = "Trans-Cycle 1",
     ramp = ramps_trans[1][1],
     invcolor = SKINCOLOR_TRANSCYCLE2,
     invshade = 7,
     chatcolor = ramps_trans[1][2],
     accessible = true
}

skincolors[SKINCOLOR_TRANSCYCLE2] = { --Light Pink
     name = "Trans-Cycle 2",
     ramp = ramps_trans[7][1],
     invcolor = SKINCOLOR_TRANSCYCLE1,
     invshade = 7,
     chatcolor = ramps_trans[7][2],
     accessible = true
}

skincolors[SKINCOLOR_BICYCLE1] = { --Blue
     name = "Bi-Cycle 1",
     ramp = ramps_bi[1][1],
     invcolor = SKINCOLOR_BICYCLE2,
     invshade = 7,
     chatcolor = ramps_bi[1][2],
     accessible = true
}

skincolors[SKINCOLOR_BICYCLE2] = { --Pink
     name = "Bi-Cycle 2",
     ramp = ramps_bi[7][1],
     invcolor = SKINCOLOR_BICYCLE1,
     invshade = 7,
     chatcolor = ramps_bi[7][2],
     accessible = true
}

skincolors[SKINCOLOR_NEAPOLITANCYCLE1] = { --Strawberry
     name = "Neapolitan-Cycle 1",
     ramp = ramps_neapolitan[1][1],
     invcolor = SKINCOLOR_NEAPOLITANCYCLE2,
     invshade = 7,
     chatcolor = ramps_neapolitan[1][2],
     accessible = true
}

skincolors[SKINCOLOR_NEAPOLITANCYCLE2] = { --Vanilla
     name = "Neapolitan-Cycle 2",
     ramp = ramps_neapolitan[3][1],
     invcolor = SKINCOLOR_NEAPOLITANCYCLE3,
     invshade = 7,
     chatcolor = ramps_neapolitan[3][2],
     accessible = true
}

skincolors[SKINCOLOR_NEAPOLITANCYCLE3] = { --Chocolate
     name = "Neapolitan-Cycle 3",
     ramp = ramps_neapolitan[5][1],
     invcolor = SKINCOLOR_NEAPOLITANCYCLE1,
     invshade = 7,
     chatcolor = ramps_neapolitan[5][2],
     accessible = true
}

skincolors[SKINCOLOR_ENERGYGAUGE] = {
     name = "Energy Gauge",
     ramp = ramps_energy[1][1],
     invcolor = SKINCOLOR_MIDNIGHT,
     invshade = 12,
     chatcolor = ramps_energy[1][2],
     accessible = true
}


local lastramptable = {0,0,0,0,0}

local colors_pride = {SKINCOLOR_PRIDECYCLE1,SKINCOLOR_PRIDECYCLE2,SKINCOLOR_PRIDECYCLE3,SKINCOLOR_PRIDECYCLE4,SKINCOLOR_PRIDECYCLE5,SKINCOLOR_PRIDECYCLE6}
local colors_trans = {SKINCOLOR_TRANSCYCLE1,SKINCOLOR_TRANSCYCLE2}
local colors_bi = {SKINCOLOR_BICYCLE1,SKINCOLOR_BICYCLE2}
local colors_neapolitan = {SKINCOLOR_NEAPOLITANCYCLE1,SKINCOLOR_NEAPOLITANCYCLE2,SKINCOLOR_NEAPOLITANCYCLE3}

--First table is regular, second is with `reducevfx` set
local flashframes_pride = {}
flashframes_pride[1] = {2,4}
flashframes_pride[2] = {4,6}
flashframes_pride[3] = {6,8}
flashframes_pride[4] = {8,10}
flashframes_pride[5] = {10,12}
flashframes_pride[6] = {12,2}

local flashframes_bitrans = {}
flashframes_bitrans[1] = {2,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6}
flashframes_bitrans[2] = {6,5,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,2}

local flashframes_neapolitan = {}
flashframes_neapolitan[1] = {2,4}
flashframes_neapolitan[2] = {4,6}
flashframes_neapolitan[3] = {6,2}

local flashframes_energy = {}
flashframes_energy[1] = {2}
flashframes_energy[2] = {4}
flashframes_energy[3] = {6}
flashframes_energy[4] = {8}
flashframes_energy[5] = {10}
flashframes_energy[6] = {12}


local lowvfx = false

local handlecyclecolor =
  function(index,currtime,loop,cycletime,holdindexes,flashframes,ramptable,colors,offset)
  
    cycletime = cycletime * TICRATE
    if loop then
      currtime = currtime%(cycletime*#holdindexes)
    end
    local rampindex = 1

    for i = 1,#holdindexes,1 do
      local holdtime = cycletime * i
      if (currtime < holdtime) or (i == #holdindexes) then
        local timediff = holdtime - currtime
        local flashdata = flashframes and flashframes[i]
        if flashdata and (timediff <= #flashdata) then
          local frame = min( #flashdata , (#flashdata-timediff)+1 )
          rampindex = flashframes[i][frame]
        else
          rampindex = holdindexes[i]
        end
        break
      end
    end
    
    if lowvfx and ramptable[rampindex][3] then
      rampindex = ramptable[rampindex][3]
    end
    
    if not (rampindex == lastramptable[index]) then --Small optimization so we aren't writing ramps every frame unnecessarily
      lastramptable[index] = rampindex
      for i = 1,#colors,1 do
        skincolors[ colors[i] ].ramp = ramptable[rampindex][1]
        skincolors[ colors[i] ].chatcolor = ramptable[rampindex][2]
        if offset < 0 then --invert
          rampindex = (#ramptable - rampindex) + 1
        elseif offset > 0 then --offset
          rampindex = rampindex + offset
          if rampindex > #ramptable then
            rampindex = rampindex - #ramptable
          end
        end
      end
    end
    
  end


addHook("ThinkFrame", function()
  --Time since the race has started
  local racetime = max(0, leveltime - starttime )
  
  lowvfx = (CV_FindVar("reducevfx").value == 1)

  --Pride-Cycle
  handlecyclecolor(1, leveltime, true, 2, {1,3,5,7,9,11}, flashframes_pride, ramps_pride, colors_pride, 2)
  
  --Trans-Cycle
  handlecyclecolor(2, leveltime, true, 6, {1,7}, flashframes_bitrans, ramps_trans, colors_trans, -1)
  
  --Bi-Cycle
  handlecyclecolor(3, leveltime, true, 6, {1,7}, flashframes_bitrans, ramps_bi, colors_bi, -1)
  
  --Neapolitan-Cycle
  handlecyclecolor(4, leveltime, true, 3, {1,3,5}, flashframes_neapolitan, ramps_neapolitan, colors_neapolitan, 2)
  
  --Energy Gauge
  handlecyclecolor(5, racetime, false, 60, {1,3,5,7,9,11,13}, flashframes_energy, ramps_energy, {SKINCOLOR_ENERGYGAUGE}, 0)
end)