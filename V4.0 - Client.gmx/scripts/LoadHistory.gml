ini_open(global.historyINI);
global.tempLocation = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"LocationRef","");
global.LocationStore = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Location","");
global.EventStore = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Event", "");
global.ActionStore = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Action", "");
global.CharSelected = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Char Selected", 0);
if(global.CharSelected == 0)
    global.ActionStore = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Action", "");
else
    global.CharStore = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Char", "");
global.LoadTempInt = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"OldInt", 0);
global.LoadTempChar = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"OldChar", 0);
global.LoadTempWell = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"OldWell", 0);
global.LoadInt = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"NewInt", 0);
global.LoadChar = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"NewChar", 0);
global.LoadWell = ini_read_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"NewWell", 0);    
global.LoadText = ini_read_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Text", "");    
ini_close()
