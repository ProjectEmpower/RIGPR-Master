ini_open(global.eventINI);
ini_write_string(global.eventName,"Event Name",global.realEventName);
ini_write_real(global.eventName,"Int", global.reqEventInt);
ini_write_real(global.eventName,"Char", global.reqEventChar);
ini_write_real(global.eventName,"Well",  global.reqEventWell);
ini_write_real(global.eventName,"Mythical", global.eventMythical);
ini_close();
