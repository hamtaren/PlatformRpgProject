///scr_HeroCreateEvent()
event_inherited();
//Zmienne
moveSpeed = 5;      //maksymalna predkosc poruszania sie w poziomie
maxVspd = 12;       //maksymalna szybkosc pionowa
moveFriction = 0.5; //tarcie powierzchni
moveAcc = 0.2;      //przyspieszenie poruszania sie w poziomie
jumpPower = -8;     //sila skoku
cspd = 4;           //szybkosc wspinaczki, wchodzenia po linie/drabinie

deathFall = false;  //czy upadek jest smiertelny

hspd = 0;           //kontrolka szybkosci poruszania sie w poziomie
vspd = 0;           //kontrolka szybkosci poruszania sie w pionie
grav = 0;           //kontrolka grawitacji

keySide = 1;        //okresla ktory przycisk jest wcisniety (lewo -1, prawo 1)
slide = false;      //czy zjezdza/slizga sie po sciane

state = STATE_MOVE; //STATE_MOVE, STATE_CLIMB,

//ZWIAZANE Z OBRAZENIAMI I ATAKIEM
attackSpeed = 1;            //oznacza ile atakow mozna zrobic w ciagu sekundy
attacking = false;          //czy wykonuje atak
attackCreated = false;      //czy stworzono obiekt reprezentujacy atak

//STRZELANIE Z BRONI DYSTATNSOWEJ
shootingSequence = SHOOT_TARGET;
shootingDir = 2; // 0 - dol, 1 - dolny skos, 2 - na wprost, 3 - gorny skos, 4 - gora


//REKA Z BRONIA
sprite_hand = spr_HeroHandStand; //sprite reki
hand_image_speed = 0;            //szybkosc wyswietlania ruchu reki (uzywane podczas ataku)
hand_index = 0;                  //index sprite'a reki

//STATYSTKI//

//doswiadczenie
level = 1;
epMax = 100;
ep = 0; ///experience points
sp = 1000; //skill points

//statystyki do rozdawania skill points
strength = 1;
dextarity = 1;
endurance = 1;
energy = 1;
vitality = 1;

//zycie
hpMax = 30;
hp = hpMax;
hpReg = 0.005;

//OBLICZANE POTRZEBNE DO KARTY POSTACI - EKWIP
dps = 0;        //obrazania na sekunde
resPhy = 0;     //odpornosc na fizyczne
resElem = 0;    //odpornosc na elemental

//EKWIPUNEK I Z TYM ZWIAZANE RZECZY
objEq = instance_create(0,0,obj_Equip);
itemToPickUp = noone; //id obiektu item ktory podniesiemy jak wcisniemy akcje

//zmeczenie
staminaMax = 100;
stamina = staminaMax;
staminaReg = 0.05;

//akcje zuzywajace wytrzymalosc
stamJump = 5; //to bedzie zmieniane w zaleznoscio od uzywanej zbroi i wytrzymalosci i/lub sily
stamAttack = 1; //to bedzie zmieniane w zaleznosci od uzywanej broni i wytrztmalosci i/lub zrecznosci
stamBashDoor = 20; //stale

//USTAWIENIE ZADAWANYCH OBRAZEN
scr_DRSet(dmgObject,0,4,0,0,0,0,0); //ustawienie tymczasowe
//USTAWIENIE ODPORNOSCI
scr_DRSet(resObject,1,1,1,1,1,1,1); //ustawienie podstawowe
