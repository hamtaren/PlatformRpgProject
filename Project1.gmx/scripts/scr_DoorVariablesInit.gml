///scr_DoorVariablesInit()
//TODO: poprawic otwieranie
image_speed=0

opened = false;     //czy drzwi maja otwarte drzwi ;p
opening = false;    //czy sa otwierane/zamykane

keyClosed = false;  //czy sa zamkniete na klucz
keyId = 0;          //id klucza ktory otwiera drzwi

barricaded = false; //czy zabarykadowane

bashed = false;     //czy wywazone (jezeli tak, to nie mozna juz z nimi nic zrobic, ani zamknac, ani otworzyc)

side = 1;          //strona otwierania drzwi (-1 = lewo, 1 = prawo)

event_inherited(); //isSolid = true;