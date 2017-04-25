ini_open(global.historyINI);
ini_write_string("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"Location", global.LocationStore);
ini_write_string("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"Event", global.EventStore);
ini_write_string("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"Action", global.ActionStore);
ini_write_real("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"OldInt", global.playerTempInt);
ini_write_real("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"OldChar", global.playerTempChar);
ini_write_real("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"OldWell", global.playerTempWell);
ini_write_real("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"NewInt", global.playerInt);
ini_write_real("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"NewChar", global.playerChar);
ini_write_real("Year"+string(global.playerYear) + " - Week"+string(global.playerWeek),"NewWell", global.playerWell);    
ini_close()
