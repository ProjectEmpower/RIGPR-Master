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
