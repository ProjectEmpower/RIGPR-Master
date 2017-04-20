ini_open(global.playerINI)
ini_write_real("Player","Int",global.PlayerInt);
ini_write_real("Player","Char",global.PlayerChar);
ini_write_real("Player","Well",global.PlayerWell);
ini_close();
