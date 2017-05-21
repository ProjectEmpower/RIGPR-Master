//opens the card ini and saves the variables 
ini_open(global.cardConsINI);
ini_write_string(global.consName,"Card Name", global.realConsName);
ini_write_real(global.consName,"Int", global.consInt);
ini_write_real(global.consName,"Char", global.consChar);
ini_write_real(global.consName,"Well", global.consWell);
ini_write_real(global.consName,"Sprite",global.cardSprite);
ini_write_real(global.consName, "Info Cards",global.cardInfoSlot);
ini_close();
