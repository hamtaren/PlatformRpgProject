///scr_LeaverParentVariableInit()

//Obiekt po ktorym dziedzicza wszystkie dzwignie
image_speed=0;  //co by sie wajha sama nie wajhała :P

//zakladamy ze pierwszy obrazek to wajcha dociagnieta do stanu turnOff czyli wylaczenie, czyli turnOn to ostatni obrazek
turnOn = false; //czy jest pociagnieta (wlaczona)
turned = true;  //czy jest juz na swoim miejscu (przeciagnieta do konca)

trigId = -1;    //id trigera ktory bedzie uruchamiala drzwignia
trigger = false;
