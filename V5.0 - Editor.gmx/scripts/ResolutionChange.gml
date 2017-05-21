window_set_size( global.roomWidth, global.roomHeight );
surface_resize(application_surface,global.roomWidth,global.roomHeight);
numberOfRooms = 14
//display_reset(8,false);
for(i = 0; i < numberOfRooms; i++)
{
    switch(i)
    {
        case 0: roomToChange = RoomMenu;
        break;
        case 1: roomToChange = RoomCharacter;
        break;
        case 2: roomToChange = RoomDiary;
        break;
        case 3: roomToChange = RoomCards;
        break;
        case 4: roomToChange = RoomLocationAdd;
        break;
        case 5: roomToChange = RoomCardEdit;
        break;
        case 6: roomToChange = RoomCardDeck;
        break;
        case 7: roomToChange = RoomOptions;
        break;
        case 8: roomToChange = RoomTutorial;
        break;
        case 9: roomToChange = RoomSprites;
        break;
        case 10: roomToChange = RoomCredits;
        break;
        case 11: roomToChange = RoomNewGame;
        break;
        case 12: roomToChange = RoomPlayerMenu;
        break;
        case 13: roomToChange = RoomBackgrounds;
        break;
    }

    room_set_width(roomToChange,global.roomWidth);
    room_set_height(roomToChange,global.roomHeight);
    room_set_view(roomToChange,0,0,0,0,global.roomWidth,global.roomHeight,0,0,global.roomWidth,global.roomHeight,32,32,-1,-1,-1)
    display_set_gui_size(global.roomWidth,global.roomHeight);
    //title positions
    global.MapTitleX = global.roomWidth/2;
    global.MapTitleY = 50;
}
