ini_open(global.playerINI)
ini_write_real("Player","Int",global.playerInt);
ini_write_real("Player","Char",global.playerChar);
ini_write_real("Player","Well",global.playerWell);
ini_close();
