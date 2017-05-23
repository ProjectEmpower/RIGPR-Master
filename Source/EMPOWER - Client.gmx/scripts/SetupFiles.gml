ini_open(global.editorINI);
global.customInt = ini_read_string("General", "Custom Int", "Int");
global.customWell = ini_read_string("General", "Custom Well", "Well");
global.customChar = ini_read_string("General", "Custom Char", "Char");
global.customMaxWeeks = ini_read_real("General","Custom Weeks", 24);
global.totalNormBuildingSprites = ini_read_real("General", "Norm Building Sprites", 0);
global.totalMythBuildingSprites = ini_read_real("General", "Myth Building Sprites", 0);
global.totalBothBuildingSprites = ini_read_real("General", "Both Building Sprites", 0);
global.totalEventCardSprites = ini_read_real("General", "Event Card Sprites", 0);
global.totalActionCardSprites = ini_read_real("General", "Action Card Sprites", 0);
global.totalConsCardSprites = ini_read_real("General", "Cons Card Sprites", 0);
global.totalInfoCardSprites = ini_read_real("General", "Info Card Sprites", 0);
global.totalCharCardSprites = ini_read_real("General", "Char Card Sprites", 0)
global.normalCardBacking = ini_read_real("General","Normal Card Back",0);
global.mythCardBacking = ini_read_real("General","Myth Card Back",0);;
global.MapBacking = ini_read_real("General","Map Background",0);
global.totalLocationBackgrounds = ini_read_real("General", "Location Backgrounds", 0); 
global.CharacterBGing = ini_read_real("General","Character Background",0);
global.DiaryBGing = ini_read_real("General","Diary Background",0);
global.CardsBGing = ini_read_real("General","Cards Background",0);
global.MenuBGing = ini_read_real("General","Menu Background",0);
global.NewGBGing = ini_read_real("General","New Game Background",0);
global.PlayerMenuBGing = ini_read_real("General","Player Menu Background",0);
global.EventCardBGing = ini_read_real("General","Event Cards Background",0);
global.ActionCardBGing = ini_read_real("General","Action Cards Background",0);
global.ConsCardBGing = ini_read_real("General","Cons Cards Background",0);
global.InfoCardBGing = ini_read_real("General","Info Cards Background",0);
global.CharCardBGing = ini_read_real("General","Char Cards Background",0);
ini_close();

for(i = 0; i < global.totalLocationBackgrounds;i++)
{
    spriteName = "LocBack"+string(i);//set the sprite name to be Usersprite + numberOftotalSprites(next sprite)
    global.locationBGArray[i] = background_add("editor_files/BG/"+spriteName+".png",0,0);
    
}
for(i = 0; i < global.totalNormBuildingSprites; i++)
{
    spriteName = "BuildingSpriteN"+string(i);//set the sprite name to be Usersprite + i
    global.normBuildingArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.normBuildingArray[i],sprite_get_width(global.normBuildingArray[i])/2,sprite_get_height(global.normBuildingArray[i])/2)

}
for(i = 0; i < global.totalMythBuildingSprites; i++)
{
    spriteName = "BuildingSpriteM"+string(i);//set the sprite name to be Usersprite + i
    global.mythBuildingArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.mythBuildingArray[i],sprite_get_width(global.mythBuildingArray[i])/2,sprite_get_height(global.mythBuildingArray[i])/2)

}
for(i = 0; i < global.totalBothBuildingSprites; i++)
{
    spriteName = "BuildingSpriteB"+string(i);//set the sprite name to be Usersprite + i
    global.bothBuildingArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.bothBuildingArray[i],sprite_get_width(global.bothBuildingArray[i])/2,sprite_get_height(global.bothBuildingArray[i])/2)

}
for(i = 0; i < global.totalEventCardSprites; i++)
{
    spriteName = "EventCardSprite"+string(i);//set the sprite name to be Usersprite + i
    global.eventCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.eventCardSpriteArray[i],sprite_get_width(global.eventCardSpriteArray[i])/2,sprite_get_height(global.eventCardSpriteArray[i])/2);
}

for(i = 0; i < global.totalActionCardSprites; i++)
{
    spriteName = "ActionCardSprite"+string(i);//set the sprite name to be Usersprite + i
    global.actionCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.actionCardSpriteArray[i],sprite_get_width(global.actionCardSpriteArray[i])/2,sprite_get_height(global.actionCardSpriteArray[i])/2);
}
for(i = 0; i < global.totalConsCardSprites; i++)
{
    spriteName = "ConsCardSprite"+string(i);//set the sprite name to be Usersprite + i
    global.consCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.consCardSpriteArray[i],sprite_get_width(global.consCardSpriteArray[i])/2,sprite_get_height(global.consCardSpriteArray[i])/2);
}
for(i = 0; i < global.totalInfoCardSprites; i++)
{
    spriteName = "InfoCardSprite"+string(i);//set the sprite name to be Usersprite + i
    global.infoCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.infoCardSpriteArray[i],sprite_get_width(global.infoCardSpriteArray[i])/2,sprite_get_height(global.infoCardSpriteArray[i])/2);
}
for(i = 0; i < global.totalCharCardSprites; i++)
{
    spriteName = "CharCardSprite"+string(i);//set the sprite name to be Usersprite + i
    global.charCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.charCardSpriteArray[i],sprite_get_width(global.charCardSpriteArray[i])/2,sprite_get_height(global.charCardSpriteArray[i])/2);
}
if(global.PlayerMenuBGing != 0)
{

    PlayerMenuBG = background_add("editor_files/BG/MenuBackground.png",0,0);
    room_set_background(RoomMenu, 0, 1, 0, PlayerMenuBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.MenuBGing != 0)
{
    MenuClickBG = background_add("editor_files/BG/SplashClickBackground.png",0,0);
    MenuBG = background_add("editor_files/BG/SplashBackground.png",0,0);
    if(os_type == os_android)
        room_set_background(RoomSplash, 0, 1, 0, MenuBG, 0, 0, 0, 0, 0, 0, 1);
    else
        room_set_background(RoomSplash, 0, 1, 0, MenuClickBG, 0, 0, 0, 0, 0, 0, 1);      
}
if(global.NewGBGing != 0)
{

    NewGBG = background_add("editor_files/BG/NewGameBackground.png",0,0);
    room_set_background(RoomNewGame, 0, 1, 0, NewGBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.MapBacking != 0)
{
    MapBack = background_add("editor_files/BG/Map.png",0,0);
    room_set_background(RoomMap, 0, 1, 0, MapBack , 0, 0, 0, 0, 0, 0, 1);
   
}
if(global.CharacterBGing != 0)
{
   CharacterBG = background_add("editor_files/BG/CharacterBackground.png",0,0);
    room_set_background(RoomCharacter, 0, 1, 0, CharacterBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.DiaryBGing != 0)
{    
      DiaryBG = background_add("editor_files/BG/DiaryBackground.png",0,0);
    room_set_background(RoomDiary, 0, 1, 0, DiaryBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.CardsBGing != 0)
{
    CardsBG = background_add("editor_files/BG/CardsBackground.png",0,0);
    room_set_background(RoomCards, 0, 1, 0, CardsBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.EventCardBGing != 0)
{
    EventCardBG = background_add("editor_files/BG/EventCardBackground.png",0,0);
    room_set_background(RoomLocationView, 1, 1, 0, EventCardBG, 0, 0, 0, 0, 0, 0, 1);    
    room_set_background(RoomCards, 1, 1, 0, EventCardBG, 0, 0, 0, 0, 0, 0, 1);
    
}
if(global.ActionCardBGing != 0)
{
 ActionCardBG = background_add("editor_files/BG/ActionCardBackground.png",0,0);
    room_set_background(RoomEventSelect, 0, 1, 0, ActionCardBG, 0, 0, 0, 0, 0, 0, 1);    
    room_set_background(RoomCards, 2, 1, 0, ActionCardBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.ConsCardBGing != 0)
{
ConsCardBG = background_add("editor_files/BG/ConsCardBackground.png",0,0);
    room_set_background(RoomConsView, 0, 1, 0, ConsCardBG, 0, 0, 0, 0, 0, 0, 1);    
    room_set_background(RoomCards, 3, 1, 0, ConsCardBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.InfoCardBGing != 0)
{
    InfoCardBG = background_add("editor_files/BG/InfoCardBackground.png",0,0);
    room_set_background(RoomInfoView, 0, 1, 0, InfoCardBG, 0, 0, 0, 0, 0, 0, 1);    
    room_set_background(RoomCards, 4, 1, 0, InfoCardBG, 0, 0, 0, 0, 0, 0, 1);
}
if(global.CharCardBGing != 0)
{
    CharCardBG = background_add("editor_files/BG/CharCardBackground.png",0,0);
    room_set_background(RoomCards, 5, 1, 0, CharCardBG, 0, 0, 0, 0, 0, 0, 1);
    room_set_background(RoomCharView, 4, 1, 0, CharCardBG, 0, 0, 0, 0, 0, 0, 1);
}

if(global.normalCardBacking != 0)
{
    global.normalCardBack = sprite_add("editor_files/sprites/NormalCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.normalCardBack,sprite_get_width(global.normalCardBack)/2,sprite_get_height(global.normalCardBack)/2);
    global.normalInfoCardBack = sprite_add("editor_files/sprites/NormalInfoCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.normalInfoCardBack,sprite_get_width(global.normalInfoCardBack)/2,sprite_get_height(global.normalInfoCardBack)/2);
}
if(global.mythCardBacking != 0)
{
    global.mythCardBack = sprite_add("editor_files/sprites/MythCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.mythCardBack,sprite_get_width(global.mythCardBack)/2,sprite_get_height(global.mythCardBack)/2);
    global.mythInfoCardBack = sprite_add("editor_files/sprites/MythInfoCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.mythInfoCardBack,sprite_get_width(global.mythInfoCardBack)/2,sprite_get_height(global.mythInfoCardBack)/2);
}
