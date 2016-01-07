///scr_LoadGame()

ini_open("savedata.ini");

/////WCZYTYWANIE STATYSTYK BOHATERA
scr_LoadHero();
/////WCZYTYWANIE EKWIPUNKU
scr_LoadEq();
ini_close();


