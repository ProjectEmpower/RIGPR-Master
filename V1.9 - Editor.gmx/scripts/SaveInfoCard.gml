//opens the card ini and saves the variables 
ini_open(global.cardInfoINI);
ini_write_string(global.infoName,"Card Text", global.infoCardText);
ini_write_string(global.infoName,"Link", global.infoLink);
ini_close();
