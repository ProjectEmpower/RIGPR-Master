ini_open(global.editorINI);
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

global.CharacterBGing = ini_read_real("General","Character Background",0);
global.DiaryBGing = ini_read_real("General","Diary Background",0);
global.CardsBGing = ini_read_real("General","Cards Background",0);

global.EventCardBGing = ini_read_real("General","Event Cards Background",0);
global.ActionCardBGing = ini_read_real("General","Action Cards Background",0);
global.ConsCardBGing = ini_read_real("General","Cons Cards Cards  Background",0);
global.InfoCardBGing = ini_read_real("General","Info Cards Cards Background",0);
global.CharCardBGing = ini_read_real("General","Char Cards Background",0);
ini_close();


for(i = 0; i < global.totalNormBuildingSprites; i++)
{
    spriteName = "BuildingSpriteN"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteNPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.normBuildingArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.normBuildingArray[i],sprite_get_width(global.normBuildingArray[i])/2,sprite_get_height(global.normBuildingArray[i])/2)

}
for(i = 0; i < global.totalMythBuildingSprites; i++)
{
    spriteName = "BuildingSpriteM"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteMPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.mythBuildingArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.mythBuildingArray[i],sprite_get_width(global.mythBuildingArray[i])/2,sprite_get_height(global.mythBuildingArray[i])/2)

}
for(i = 0; i < global.totalBothBuildingSprites; i++)
{
    spriteName = "BuildingSpriteB"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteBPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.bothBuildingArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.bothBuildingArray[i],sprite_get_width(global.bothBuildingArray[i])/2,sprite_get_height(global.bothBuildingArray[i])/2)

}
for(i = 0; i < global.totalEventCardSprites; i++)
{
    spriteName = "EventCardSprite"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteBPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.eventCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.eventCardSpriteArray[i],sprite_get_width(global.eventCardSpriteArray[i])/2,sprite_get_height(global.eventCardSpriteArray[i])/2);
}

for(i = 0; i < global.totalActionCardSprites; i++)
{
    spriteName = "ActionCardSprite"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteBPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.actionCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.actionCardSpriteArray[i],sprite_get_width(global.actionCardSpriteArray[i])/2,sprite_get_height(global.actionCardSpriteArray[i])/2);
}
for(i = 0; i < global.totalConsCardSprites; i++)
{
    spriteName = "ConsCardSprite"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteBPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.consCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.consCardSpriteArray[i],sprite_get_width(global.consCardSpriteArray[i])/2,sprite_get_height(global.consCardSpriteArray[i])/2);
}
for(i = 0; i < global.totalInfoCardSprites; i++)
{
    spriteName = "InfoCardSprite"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteBPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.infoCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.infoCardSpriteArray[i],sprite_get_width(global.infoCardSpriteArray[i])/2,sprite_get_height(global.infoCardSpriteArray[i])/2);
}
for(i = 0; i < global.totalCharCardSprites; i++)
{
    spriteName = "CharCardSprite"+string(i);//set the sprite name to be Usersprite + i
    if(!file_exists("editor_files/sprites/"+spriteName+".png"))
    {
        spriteBPNG[i] = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/"+spriteName+".png", "editor_files/sprites/"+spriteName+".png");
    }
    global.charCardSpriteArray[i] = sprite_add("editor_files/sprites/"+spriteName+".png",1,false,false,0,0);//creates the sprite using image above
    sprite_set_offset(global.charCardSpriteArray[i],sprite_get_width(global.charCardSpriteArray[i])/2,sprite_get_height(global.charCardSpriteArray[i])/2);
}

if(global.MapBacking != 0)
{
    if(!file_exists("editor_files/sprites/Map.png"))
    {
        spritePNG = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/Map.png", "editor_files/sprites/Map.png");
    }
    global.MapBack = sprite_add("editor_files/sprites/Map.png",1,false,true,0,0)
    sprite_set_offset(global.MapBack,sprite_get_width(global.MapBack)/2,sprite_get_height(global.MapBack)/2);
   
}
if(global.CharacterBGing != 0)
{
    global.CharacterBG = sprite_add("editor_files/sprites/CharacterBackground.png",1,false,true,0,0)
    sprite_set_offset(global.CharacterBG,sprite_get_width(global.CharacterBG)/2,sprite_get_height(global.CharacterBG)/2);
    test = background_add("editor_files/sprites/CharacterBackground.png",0,0);
    room_set_background(RoomCharacter, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.DiaryBGing != 0)
{
    global.DiaryBG = sprite_add("editor_files/sprites/DiaryBackground.png",1,false,true,0,0)
    sprite_set_offset(global.DiaryBG,sprite_get_width(global.DiaryBG)/2,sprite_get_height(global.DiaryBG)/2);
      test = background_add("editor_files/sprites/DiaryBackground.png",0,0);
    room_set_background(RoomDiary, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.CardsBGing != 0)
{
    global.CardsBG = sprite_add("editor_files/sprites/CardsBackground.png",1,false,true,0,0)
    sprite_set_offset(global.CardsBG,sprite_get_width(global.CardsBG)/2,sprite_get_height(global.CardsBG)/2);
   test = background_add("editor_files/sprites/CardsBackground.png",0,0);
    room_set_background(RoomCards, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.EventCardBGing != 0)
{
    global.EventCardBG = sprite_add("editor_files/sprites/EventCardBackground.png",1,false,true,0,0)
    sprite_set_offset(global.EventCardBG,sprite_get_width(global.EventCardBG)/2,sprite_get_height(global.EventCardBG)/2);
    test = background_add("editor_files/sprites/EventCardBackground.png",0,0);
    room_set_background(RoomLocationView, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);    
    room_set_background(RoomCards, 1, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.ActionCardBGing != 0)
{
    global.ActionCardBG = sprite_add("editor_files/sprites/ActionCardBackground.png",1,false,true,0,0)
    sprite_set_offset(global.ActionCardBG,sprite_get_width(global.ActionCardBG)/2,sprite_get_height(global.ActionCardBG)/2);
   test = background_add("editor_files/sprites/ActionCardBackground.png",0,0);
    room_set_background(RoomEventSelect, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);    
    room_set_background(RoomCards, 2, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.ConsCardBGing != 0)
{
    global.ConsCardBG = sprite_add("editor_files/sprites/ConsCardBackground.png",1,false,true,0,0)
    sprite_set_offset(global.ConsCardBG,sprite_get_width(global.ConsCardBG)/2,sprite_get_height(global.ConsCardBG)/2);
   test = background_add("editor_files/sprites/ConsCardBackground.png",0,0);
    room_set_background(RoomConsView, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);    
    room_set_background(RoomCards, 3, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.InfoCardBGing != 0)
{
    global.InfoCardBG = sprite_add("editor_files/sprites/InfoCardBackground.png",1,false,true,0,0)
    sprite_set_offset(global.InfoCardBG,sprite_get_width(global.InfoCardBG)/2,sprite_get_height(global.InfoCardBG)/2);
    test = background_add("editor_files/sprites/InfoCardBackground.png",0,0);
    room_set_background(RoomInfoView, 0, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);    
    room_set_background(RoomCards, 4, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}
if(global.CharCardBGing != 0)
{
    global.CharCardBG = sprite_add("editor_files/sprites/CharCardBackground.png",1,false,true,0,0)
    sprite_set_offset(global.CharCardBG,sprite_get_width(global.CharCardBG)/2,sprite_get_height(global.CharCardBG)/2);
    test = background_add("editor_files/sprites/CharCardBackground.png",0,0);
    room_set_background(RoomCards, 5, 1, 0, test, 0, 0, 1, 1, 0, 0, 1);
}

if(global.normalCardBacking != 0)
{
    if(!file_exists("editor_files/sprites/NormalCardBack.png"))
    {
        spritePNG = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/NormalCardBack.png", "editor_files/sprites/NormalCardBack.png");
    }
    if(!file_exists("editor_files/sprites/NormalInfoCardBack.png"))
    {
        spriteIPNG = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/NormalInfoCardBack.png", "editor_files/sprites/NormalInfoCardBack.png");
    }
    global.normalCardBack = sprite_add("editor_files/sprites/NormalCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.normalCardBack,sprite_get_width(global.normalCardBack)/2,sprite_get_height(global.normalCardBack)/2);
    global.normalInfoCardBack = sprite_add("editor_files/sprites/NormalInfoCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.normalInfoCardBack,sprite_get_width(global.normalInfoCardBack)/2,sprite_get_height(global.normalInfoCardBack)/2);
}
if(global.mythCardBacking != 0)
{
    if(!file_exists("editor_files/sprites/MythCardBack.png"))
    {
        spritePNG = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/MythCardBack.png", "editor_files/sprites/MythCardBack.png");
    }
    if(!file_exists("editor_files/sprites/MythInfoCardBack.png"))
    {
        spriteIPNG = http_get_file("http://www.ell360.co.uk/EMPOWER/editor_files/sprites/MythInfoCardBack.png", "editor_files/sprites/MythInfoCardBack.png");
    }
    global.mythCardBack = sprite_add("editor_files/sprites/MythCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.mythCardBack,sprite_get_width(global.mythCardBack)/2,sprite_get_height(global.mythCardBack)/2);
    global.mythInfoCardBack = sprite_add("editor_files/sprites/MythInfoCardBack.png",1,false,true,0,0)
    sprite_set_offset(global.mythInfoCardBack,sprite_get_width(global.mythInfoCardBack)/2,sprite_get_height(global.mythInfoCardBack)/2);
}
