ini_open(global.historyINI);
ini_write_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"LocationRef",global.tempLocation);
ini_write_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Location", global.LocationStore);
ini_write_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Event", global.EventStore);
ini_write_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Action", global.ActionStore);
ini_write_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"OldInt", global.LoadTempInt);
ini_write_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"OldChar", global.LoadTempChar);
ini_write_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"OldWell", global.LoadTempWell);
ini_write_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"NewInt", global.LoadInt);
ini_write_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"NewChar", global.LoadChar);
ini_write_real("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"NewWell", global.LoadWell);    
ini_write_string("Year"+string(global.JYear) + " - Week"+string(global.JWeek),"Text", global.LoadText);    
ini_close()
