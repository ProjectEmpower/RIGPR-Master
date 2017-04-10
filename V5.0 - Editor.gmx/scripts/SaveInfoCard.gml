//opens the card ini and saves the variables 
ini_open(global.cardInfoINI);
ini_write_string(global.infoName,"Card Name", global.realInfoName);
ini_write_string(global.infoName,"Card Text", global.infoCardText);
ini_write_real(global.infoName,"Sprite",global.cardSprite);
ini_write_string(global.infoName,"Link", global.infoLink);
ini_close();
