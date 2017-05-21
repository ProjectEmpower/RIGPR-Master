if(global.RoomState == 0)
{
    ini_open(global.cardEventINI);
    global.eventRef = ini_read_real(global.EventLoadName,"Ref","");
    global.realEventName = ini_read_string(global.EventLoadName,"Event Name",""); //writes the instance number (global TotalInstanceNum) to "instanceRef" inside the ini file.;
    global.reqEventInt = ini_read_real(global.EventLoadName,"Int",0);
    global.reqEventChar = ini_read_real(global.EventLoadName, "Char", 0);
    global.reqEventWell = ini_read_real(global.EventLoadName, "Well",0);
    global.infoCardRef = ini_read_real(global.EventLoadName, "Info Cards",0);
    global.cardSprite = ini_read_real(global.EventLoadName,"Sprite",-1);
    global.eventMythical = ini_read_real(global.EventLoadName,"Mythical",0);
    ini_close();
}
if(global.RoomState == 1)
{    
    ini_open(global.cardActionINI);
    global.cardRef = ini_read_real(global.ActionLoadName,"Ref",0);
    global.realCardName = ini_read_string(global.ActionLoadName,"Card Name","");
    global.cardText = ini_read_string(global.ActionLoadName,"Card Text","");
    global.cardSprite = ini_read_real(global.ActionLoadName,"Sprite",-1);
    global.infoCardRef = ini_read_real(global.ActionLoadName, "Info Cards",0);
    global.consCardRef = ini_read_real(global.ActionLoadName,"Cons Cards",0);  
    global.cardMythical = ini_read_real(global.ActionLoadName,"Mythical",0);
    ini_close();
}
if(global.RoomState == 2)
{
    ini_open(global.cardConsINI);
    global.consCardRef = ini_read_real(global.ConsLoadName,"Ref",0);  
    global.realConsName = ini_read_string(global.ConsLoadName,"Card Name","");
    global.consInt = ini_read_real(global.ConsLoadName ,"Int",0);
    global.consChar = ini_read_real(global.ConsLoadName ,"Char",0);
    global.consWell = ini_read_real(global.ConsLoadName ,"Well",0);
    global.cardSprite = ini_read_real(global.ConsLoadName,"Sprite",-1);
    global.infoCardRef = ini_read_real(global.ConsLoadName, "Info Cards",0);
    ini_close();
}
if(global.RoomState == 3)
{
    ini_open(global.cardInfoINI); 
    global.infoCardRef = ini_read_real(global.InfoLoadName,"Ref",0);
    global.realInfoName = ini_read_string(global.InfoLoadName,"Card Name","");
    global.infoCardText = ini_read_string(global.InfoLoadName,"Card Text","");
    global.cardSprite = ini_read_real(global.InfoLoadName,"Sprite",-1);
    global.infoLink = ini_read_string(global.InfoLoadName,"Link","");
    ini_close();
}
if(global.RoomState == 4)
{
    ini_open(global.cardCharINI); 
    global.charCardRef = ini_read_real(global.CharLoadName,"Ref",0);
    global.charCardName = ini_read_string(global.CharLoadName,"Card Name","");
    global.cardSprite = ini_read_real(global.CharLoadName,"Sprite",-1);
    global.charCardText = ini_read_string(global.CharLoadName,"Card Text","");
    ini_close();
}

