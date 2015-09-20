///scr_HeroCreateEvent()

//Zmienne
grav = 0;           //kontrolka grawitacji
moveSpeed = 5;      //maksymalna predkosc poruszania sie w poziomie
maxVspd = 12;       //maksymalna szybkosc pionowa
moveFriction = 0.5; //tarcie powierzchni
moveAcc = 0.2;      //przyspieszenie poruszania sie w poziomie
jumpPower = -8;     //sila skoku

deathFall = false;  //czy upadek jest smiertelny

hspd = 0;           //kontrolka szybkosci poruszania sie w poziomie
vspd = 0;           //kontrolka szybkosci poruszania sie w pionie
cspd = 4;           //szybkosc wspinaczki, wchodzenia po linie/drabinie

keySide = 1;        //okresla ktory przycisk jest wcisniety (lewo -1, prawo 1)

hidden = false;     //czy ukryty
slide = false;      //czy zjezdza/slizga sie po sciane

state = STATE_MOVE; //STATE_MOVE, STATE_CLIMB, STATE_HIDE
