ini_open(global.editorINI)
ini_write_real("Tutorial","Location Include",global.LocationTutorial);
ini_write_real("Tutorial","Event Include",global.EventTutorial);
ini_write_real("Tutorial","Action Include",global.ActionTutorial);
ini_write_real("Tutorial","Cons Include",global.ConsTutorial);
ini_write_real("Tutorial","Info Include",global.InfoTutorial);
ini_write_real("Tutorial","Char Include",global.CharTutorial);
ini_write_real("Tutorial","Myth Include",global.MythTutorial);
ini_write_real("Tutorial","Stats Include",global.PlayerStatsTutorial);
ini_write_real("Tutorial","Diary Include",global.DiaryTutorial);
ini_write_real("Tutorial","Cards Include",global.CardsTutorial);
for(i = 0; i < 10; i++)
{            
     ini_write_real("Tutorial","Order"+string(i),global.TutorialOrder[i]);;
}
ini_close();
