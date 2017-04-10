//opens the card ini and saves the variables 
ini_open(global.cardCharINI);
ini_write_string(global.charName,"Card Name", global.charCardName);
ini_write_string(global.charName,"Card Text", global.charCardText); //writes a bank (0) "Int" stat
ini_write_real(global.charName,"Sprite",global.cardSprite);
ini_write_real(global.charName, "Info Cards",global.cardInfoSlot);
ini_close();
