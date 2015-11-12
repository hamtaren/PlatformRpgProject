///scr_HeroStateMove()

//wykrywanie podloza/grawitacja/tarcie
if (!place_meeting_solid(x,y+vspd+1))
{
    grav = 0.5;
    vspd+=grav;  
    friction=0;
}
else
{
    //grawitacja i tarcie
    grav = 0;
    friction = moveFriction;
}

//Skakanie
if (keyboard_check_pressed(KEY_JUMP))
{
    if (stamina > stamJump && grav==0 && vspd==0) //im szybciej biegnie tym wyzej skacze
    {
        vspd = jumpPower + (1 - (abs(hspd) / moveSpeed))*3
        stamina-=stamJump;
    }
}

//Wcisniecie i trzymanie przycisku na boki
if (keyboard_check_sides())
{
//Jezeli jest na ziemi
    if (grav==0)
    {    
        //Chodzenie na boki na plaskim
        if (!place_meeting_solid(x+hspd+moveAcc*keySide,y))
        {
            var multi = 1;           //mnoznik pomocniczy
            if (sign(hspd)!=keySide) //szybsze wyhamowanie jezeli biegnie wciskamy przycisk w przeciwnym kierunku do aktualnego kierunku poruszania sie
            multi = 5;
            
            hspd += multi*moveAcc*keySide;
        }
    }   
}

//Slizganie sie przy scianie podczas spadania
if ( (place_meeting(x+5,y,obj_SlideableSolid) || place_meeting(x-5,y,obj_SlideableSolid)) && grav!=0 && hspd==0)
    slide = true;
else
    slide = false;


//Odbijanie sie od scian podczas slizgania
if (slide && keyboard_check_pressed(KEY_JUMP) && stamina>stamJump)
{
    //wybranie strony w ktora ma sie wybic
    if (place_meeting(x+5,y,obj_SlideableSolid))
        hspd=-5;
    else if (place_meeting(x-5,y,obj_SlideableSolid))
        hspd=5;
        
    //lekkie wybicie do gory
    vspd=-3;
    stamina-=stamJump;
}


//Zatrzymywanie
if (!keyboard_check_sides())
{
    if ( abs(hspd!=0))
        hspd =max (abs(hspd) - friction ,0) * sign(hspd); 
}

//Graniczenie predkosci pionowej/poziomej
vspd = clamp(vspd, -maxVspd, maxVspd); 
hspd = clamp(hspd, -moveSpeed, moveSpeed);

//Spadanie
if (vspd == maxVspd && !deathFall)
{
    debug_log("Przy upadku bedzie dead",DEBUG_INFO);
    deathFall = true;    
}
else
    deathFall = false;

//Smierc od upadku    
if (deathFall)
{
    if (place_meeting_solid(x,y+vspd+1))
        scr_HeroDeath();
}


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
