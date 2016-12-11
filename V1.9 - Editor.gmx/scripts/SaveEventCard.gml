//this opens the ini and saves the variables into the corresponding event
ini_open(global.cardEventINI);
ini_write_real(global.eventName,"Event Ref", real(global.eventRef));
ini_write_string(global.eventName,"Event Name",global.realEventName);
//ini_write_string(global.eventName,"Description",global.eventDescription);
ini_write_real(global.eventName,"Int", global.reqEventInt);
ini_write_real(global.eventName,"Char", global.reqEventChar);
ini_write_real(global.eventName,"Well",  global.reqEventWell);
ini_write_real(global.eventName,"Mythical", global.eventMythical);
ini_write_real(global.eventName, "Action1",global.card1);
ini_write_real(global.eventName, "Cons2",global.card2);
ini_write_real(global.eventName, "Info3",global.card3);
ini_write_real(global.eventName, "Char4",global.card4);
ini_close();
