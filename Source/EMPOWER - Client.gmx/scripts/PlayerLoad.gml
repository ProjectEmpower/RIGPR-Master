ini_open(global.playerINI)
global.Name = ini_read_string("Player","Name","");
global.playerInt = ini_read_real("Player","Int",5);
global.playerChar = ini_read_real("Player","Char",5);
global.playerWell = ini_read_real("Player","Well",5);
global.playerYear = ini_read_real("Player","Year",1);
global.playerWeek = ini_read_real("Player","Week",0);
global.playerSprite = ini_read_real("Player","Sprite",0);
global.CompletedTutorial = ini_read_real("Player","Tutorial",0);
global.UserSprite = global.playerSprite;
ini_close();
