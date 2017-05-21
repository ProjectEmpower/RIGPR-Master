ini_open(global.locationINI)//opens locatio ini
ini_write_string(global.tempLocation,"Real Location Name",global.realLocationName); //writes the location name on exit
ini_write_string(global.tempLocation,"Description",global.description); //writes the description on exit.
ini_write_real(global.tempLocation,"Background",global.BGRef);
ini_write_real(global.tempLocation,"Number of Events", global.locationEventNumber);//saves the number of events
if(global.locationEventNumber > 0) //if there is more than one
{
    tempEventWeek = global.tempEvent+"Week";
    ini_write_real(global.tempLocation,tempEventWeek,global.eventWeek);//write the week 
    tempEventYear = global.tempEvent+"Year";
    ini_write_real(global.tempLocation,tempEventYear,global.eventYear);//write the week 
    tempEventmyth = global.tempEvent+"Mythical";
    ini_write_real(global.tempLocation,tempEventmyth,global.eventMyth);//write the mythical status of the event
}
ini_write_real(global.tempLocation,"Mythical", global.locationMyth);//writes the mythical status of the location
ini_write_real(global.tempLocation,"SpriteRef", global.buildingSprite);
ini_close();    //closes the ini
