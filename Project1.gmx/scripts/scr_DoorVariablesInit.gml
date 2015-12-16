///scr_DoorVariablesInit()
image_speed=0

opened = false;     //czy drzwi maja otwarte drzwi ;p
opening = false;    //czy sa otwierane/zamykane

key = -1; //-1 : nie trzeba klucza, 0 : brązowy, 1 : sreb, 2 : złoty, 3 : dźwignia 

barricaded = false; //czy zabarykadowane

bashed = false;     //czy wywazone (jezeli tak, to nie mozna juz z nimi nic zrobic, ani zamknac, ani otworzyc)

side = 1;          //strona otwierania drzwi (-1 = lewo, 1 = prawo)

event_inherited(); //isSolid = true;
