ini_open(global.editorINI);
global.LocationTutorial = ini_read_real("Tutorial","Location Include",0);
global.EventTutorial = ini_read_real("Tutorial","Event Include",0);
global.ActionTutorial = ini_read_real("Tutorial","Action Include",0);
global.ConsTutorial = ini_read_real("Tutorial","Cons Include",0);
global.InfoTutorial = ini_read_real("Tutorial","Info Include",0);
global.CharTutorial = ini_read_real("Tutorial","Char Include",0);
global.MythTutorial = ini_read_real("Tutorial","Myth Include",0);
global.PlayerStatsTutorial = ini_read_real("Tutorial","Stats Include",0);
global.DiaryTutorial = ini_read_real("Tutorial","Diary Include",0);
global.CardsTutorial = ini_read_real("Tutorial","Cards Include",0);
    for(i = 0; i < 10; i++)
    {            
        global.TutorialOrder[i] = ini_read_real("Tutorial","Order"+string(i),i+1);;
    }
ini_close();
