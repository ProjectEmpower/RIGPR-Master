//this opens the ini and saves the variables into the corresponding event
ini_open(global.eventINI);
ini_write_string(global.eventName,"Event Name",global.realEventName);
ini_write_real(global.eventName,"Int", global.reqEventInt);
ini_write_real(global.eventName,"Char", global.reqEventChar);
ini_write_real(global.eventName,"Well",  global.reqEventWell);
ini_write_real(global.eventName,"Mythical", global.eventMythical);
ini_write_real(global.eventName, "Card1",global.card1);
ini_write_real(global.eventName, "Card2",global.card2);
ini_write_real(global.eventName, "Card3",global.card3);
ini_close();
