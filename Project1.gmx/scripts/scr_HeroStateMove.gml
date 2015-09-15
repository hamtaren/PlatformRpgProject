///scr_HeroStateMove()
//TODO: pomysl: ujednolicic dla prawo/lewo wszystkie skrypty, dodajac zmienna side, ktora okresla w ktora strone wciskany jest przycisk, funkcje ustalajaca ta zmienną oraz funkcje skracajaca zapis "if (keyboard_check(key_right) || keyboard_check(key_left)" np. keyboard_check_sides i keyboard_check_pressed_sides(jezeli bedzie potrzba rozroznic, ale chyba bedzie)
//wykrywanie podloza/grawitacja/tarcie
if (!place_meeting_solid(x,y+vspd+1))
{
    grav = 0.5;
    vspd+=grav;  
    friction=0;
}
else
{
    grav = 0;
    friction = moveFriction;
}


//Skakanie
if (keyboard_check_pressed(KEY_UP))
{
    if (grav==0 && vspd==0) //im szybciej biegnie tym wyzej skacze
        vspd = jumpPower + (1 - (abs(hspd) / moveSpeed))*3        
}

//Chodzenie na boki
//LEWO
if (!place_meeting_solid(x+hspd-moveAcc, y))
{
    if (keyboard_check(KEY_LEFT) && !keyboard_check(KEY_RIGHT) && grav==0)
    {
        var multi = 1;
        //jezeli chce biec w przeciwna strone do aktualnego kierunku poruszania sie to latwiej wyhamowac
        if (hspd>0)
            multi=5;

        hspd -= multi*moveAcc; 
    }
}

//PRAWO
//TODO: przerobic tak, zeby mozna bylo ta pozniej zaaplikowac do AI wrogow (czyli zrobic super-uber funkcje)
if (keyboard_check(KEY_RIGHT) && !keyboard_check(KEY_LEFT) && grav == 0)
{
    if (!place_meeting_solid(x+hspd+moveAcc, y))
    {
        var multi = 1;
        
        if (hspd<0)
            multi = 5;
        
        hspd += multi*moveAcc;
    }
    else if (place_meeting_diagonal(x+hspd+moveAcc, y) && !place_meeting_diagonal(x-4,y) )
    {
        for (var i = 0; i<8; i++)
        {
            if (!place_meeting_diagonal(x+hspd+moveAcc,y-i))
            {
                y-=i;
                hspd = max(hspd+moveAcc, 1);
                break;
            }
        }
    }
    //TODO: gladkie schodznie
    /*
    else if (place_meeting_diagonal(x+hspd+moveAcc, y+8) && !place_meeting_diagonal(x+hspd+moveAcc,y))
    {
        for (var i = 0; i<8; i++)
        {
            if (!place_meeting_diagonal(x+hspd+moveAcc,y+8-i))
            {
                y+=8-i;
                hspd = 0;//max(hspd+moveAcc,1);
                break;
            }
        }
    }*/
}

//Slizganie sie przy scianie podczas spadania
if ( (place_meeting(x+5,y,obj_SlideableSolid) || place_meeting(x-5,y,obj_SlideableSolid)) && grav!=0 && hspd==0)
    slide = true;
else
    slide = false;

//Odbijanie sie od scian podczas slizgania
if (slide)
{
    if (keyboard_check_pressed(KEY_LEFT))
    {
        hspd=-5;
        vspd=-3;
    }
    else if (keyboard_check_pressed(KEY_RIGHT))
    {
        hspd=5;
        vspd=-3;
    }
}

//Zatrzymywanie
if !(keyboard_check(KEY_LEFT) or keyboard_check(KEY_RIGHT))
{
    if ( abs(hspd!=0))
        	hspd =max (abs(hspd) - friction ,0) * sign(hspd);
}


//Graniczenie predkosci pionowej
vspd = clamp(vspd, -10, 10); 
hspd = clamp(hspd, -moveSpeed, moveSpeed);


//Poziome wykrywanie zblizajacych sie solidow
if (place_meeting_solid(x+hspd, y))
{
    while(!place_meeting_solid(x+sign(hspd), y))
        x = x+sign(hspd);
    hspd=0;
}

//przemieszczenie w poziomie
    x+=hspd;
 
//Pionowe wykrywanie zblizajacych sie solidow   
if (place_meeting_solid(x, y +vspd))
{
    while(!place_meeting_solid(x, y +sign(vspd)))
        y+= sign(vspd);
    vspd = 0;
}

//przemieszczenie w pionie
    y+=vspd;
