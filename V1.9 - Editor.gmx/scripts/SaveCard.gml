//opens the card ini and saves the variables 
ini_open(global.cardINI);
ini_write_string(global.cardName,"Card Name", global.realCardName);
ini_write_real(global.cardName,"Int", global.int);
ini_write_real(global.cardName,"Char", global.char);
ini_write_real(global.cardName,"Well", global.well);
ini_write_string(global.cardName,"Card Text",global.cardText);
ini_close();
