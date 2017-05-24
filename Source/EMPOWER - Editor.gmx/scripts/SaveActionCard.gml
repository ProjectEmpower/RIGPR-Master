//opens the card ini and saves the variables 
ini_open(global.cardActionINI);
ini_write_string(global.cardName,"Card Name", global.realCardName);
ini_write_string(global.cardName,"Card Text",global.cardText);
ini_write_real(global.cardName,"Mythical",global.cardMythical);
ini_write_real(global.cardName,"Sprite",global.cardSprite);
ini_write_real(global.cardName, "Info Cards",global.cardInfoSlot);
ini_write_real(global.cardName,"Cons Cards",global.ConsCard);
ini_close();
