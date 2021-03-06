-- JF F3K mix adjustment
-- Timestamp: 2019-09-29
-- Created by Jesper Frickmann

local ui = soarUtil.LoadWxH("JF3K/ADJMIX.lua", ui) -- Screen size specific function

-- For updating aileron throws with negative differential
ui.gvAil = 0 -- Index of global variable used for aileron travel
ui.gvBrk = 1 -- Index of global variable used for air brake travel
ui.gvDif = 3 -- Index of global variable used for aileron differential

-- This is pretty messy, but getValue works better for getting values for the current flight mode,
-- whereas getGlobalVariable works better for flight mode 0 and for setting GVs from Lua 
ui.gv3 = getFieldInfo("gvar3").id
ui.gv4 = getFieldInfo("gvar4").id
ui.gv5 = getFieldInfo("gvar5").id
ui.gv6 = getFieldInfo("gvar6").id

return{run = ui.run}