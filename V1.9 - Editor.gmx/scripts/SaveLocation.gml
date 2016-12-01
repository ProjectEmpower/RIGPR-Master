ini_open(global.locationINI)
ini_write_string(global.tempLocation,"Real Location Name",global.realLocationName); //writes the location name on exit
ini_write_string(global.tempLocation,"Description",global.description); //writes the description on exit.

ini_write_real(global.tempLocation,"Number of Events", global.locationEventNumber);
if(global.locationEventNumber > 0)
{
    //tempEventID = string(global.EventID);
    //global.tempEvent = "Event"+tempEventID;
    tempEventWeek = global.tempEvent+"Week";
    ini_write_real(global.tempLocation,tempEventWeek,global.eventWeek);
    tempEventmyth = global.tempEvent+"Mythical";
    ini_write_real(global.tempLocation,tempEventmyth,global.eventMyth);
}
ini_write_real(global.tempLocation,"Mythical", global.locationMyth);
ini_close();    
