

//ini files
global.locationINI = "ini_files/location.ini";
global.playerINI = "ini_files/player.ini";

global.cardEventINI = "ini_files/cardEvent.ini";
global.cardActionINI = "ini_files/cardAction.ini";
global.cardInfoINI = "ini_files/cardInfo.ini";
global.cardConsINI = "ini_files/cardCons.ini";
global.cardCharINI = "ini_files/cardChar.ini";
global.editorINI = "editor_files/editor.ini";
global.playerINI = "editor_files/player.ini";
global.historyINI = "editor_files/history.ini";
global.AllCards = "editor_files/AllCards.ini";
if(!file_exists(global.editorINI))
{
   editor_ini = http_get_file(global.Address+"editor_files/editor.ini", global.editorINI);
}
//checks to see if the ini files exist, if they do not, it downloads them from the webhost
if(!file_exists(global.locationINI))
{
    location_ini = http_get_file(global.Address+"ini_files/location.ini", global.locationINI);
}
if(!file_exists(global.cardEventINI))
{
    cardEvent_ini = http_get_file(global.Address+"ini_files/cardEvent.ini", global.cardEventINI);
}
if(!file_exists(global.cardActionINI))
{
    cardAction_ini = http_get_file(global.Address+"ini_files/cardAction.ini", global.cardActionINI);
}
if(!file_exists(global.cardInfoINI))
{
    cardInfo_ini = http_get_file(global.Address+"ini_files/cardInfo.ini", global.cardInfoINI);
}
if(!file_exists(global.cardConsINI))
{
    cardCons_ini = http_get_file(global.Address+"ini_files/cardCons.ini", global.cardConsINI);
}
if(!file_exists(global.cardCharINI))
{
    cardChar_ini = http_get_file(global.Address+"ini_files/cardChar.ini", global.cardCharINI);
}

if(!file_exists(global.playerINI))
{
   global.NewGame = true;
   global.UserSprite = 0;
    global.playerSprite = 0;
}
else
{
    ini_open(global.playerINI)
    if(ini_key_exists("Player","Name"))
    {
        global.NewGame = false;
        if(ini_read_real("Player","Sprite",0) == 1)
        {
            spriteName = "UserSprite";
            global.UserSprite = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
            sprite_set_offset(global.UserSprite,sprite_get_width(global.UserSprite)/2,sprite_get_height(global.UserSprite)/2)

        }
        
    }
    else
    {
        global.UserSprite = 0;
        global.playerSprite = 0;
        global.NewGame = true; 

    }
  ini_close();
}


if(os_type == os_android)
{
    global.startOrientation = display_get_orientation();
    if(global.startOrientation != display_portrait or global.startOrientation != display_portrait_flipped)
    {
        //mobile res    
        global.roomWidth = 960;
        global.roomHeight = 640;
    
    }
    else
    {
        //mobile res
        global.roomWidth = 640;
        global.roomHeight = 960;
    }
}
else
{
        global.roomWidth = 1280;
        global.roomHeight = 720;
}

global.zooming = false;
//pc res
//global.roomWidth = 1280;
//global.roomHeight = 720;
//sets the initial view of the screen, this is used to to create the variable
global.currentX = 0;
global.currentY = 0;
//sets the default positions of the Hud on the map screens
global.firstLoad = false;
global.tempCardBackMythStatus = 0;
global.fullScreen = false;
window_set_fullscreen(global.fullScreen);//checks to see if it should be full screen, applies to pc only
global.lastResRoom = 0; //used for when the screen rotates on mobile devices.
//week info
global.zoom = 1;//sets start level of zoom
global.Name = "";
global.eventCardList = ds_list_create();
global.actionCardList = ds_list_create();
global.charCardList = ds_list_create();
global.infoCardList = ds_list_create();
global.consCardList = ds_list_create();

global.eventCardOrder = ds_list_create();
global.actionCardOrder = ds_list_create();
global.charCardOrder = ds_list_create();
global.infoCardOrder = ds_list_create();
global.consCardOrder = ds_list_create();

//instnace variables
global.TotalInstanceNum = 0;//used later for building placement
global.myth = 0; 
global.locked = 0;
global.tempNum = 0;
global.TimeTravel = false;
global.moveLock = 0; //locks the player from entering a location when panning the map screen

global.totalEventCards = 0;//total number of events
global.totalActionCards = 0;//total number of action cards
global.totalInfoCards = 0;//total number of info cards
global.totalConsCards = 0;//total number of consequence cards
global.totalCharCards = 0;//total number of character cards
room = RoomResChange;

//moves to the menu
