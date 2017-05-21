ini_open(global.playerINI)
ini_write_real("Player","Int",global.playerInt);
ini_write_real("Player","Char",global.playerChar);
ini_write_real("Player","Well",global.playerWell);
ini_write_real("Player","Year",global.playerYear);
ini_write_real("Player","Week",global.playerWeek);
ini_write_real("Player","Tutorial",global.CompletedTutorial);
ini_close();
