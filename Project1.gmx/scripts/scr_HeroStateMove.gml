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
if (keyboard_check_pressed(KEY_UP))
{
    if (grav==0 && vspd==0) //im szybciej biegnie tym wyzej skacze
        vspd = jumpPower + (1 - (abs(hspd) / moveSpeed))*3        
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
        /*TYMCZASOWO WYLACZONE. DZIALA, ALE NIE ZAWSZE PLYNNIE.
        //Wchodzenie pod gorke        
        if (place_meeting_diagonal(x+hspd+(moveAcc*keySide), y) && !place_meeting_diagonal(x-(4*keySide),y) )
        {
            for (var i = 0; i<8; i++)
            {
                if (!place_meeting_diagonal(x+hspd+(moveAcc*keySide),y-i))
                {                   
                    y-=i;
                    hspd = max(abs(hspd)+moveAcc, 1)*keySide;
                    break;
                }
            }
        }
        //Schodzenie
        if (place_meeting_diagonal(x-(4*keySide),y) && !place_meeting_solid(x+hspd+moveAcc*keySide,y))
        {
            for (var i =0; i < 8; i ++)
            {
                if (!place_meeting_solid(x,y+8-i))
                {
                    y += 8-i;
                    hspd = max(3, 1)*keySide;
                    break;
                }
            }
        }*/
    }   
}

//Slizganie sie przy scianie podczas spadania
if ( (place_meeting(x+5,y,obj_SlideableSolid) || place_meeting(x-5,y,obj_SlideableSolid)) && grav!=0 && hspd==0)
    slide = true;
else
    slide = false;

//Wcisniecie przysku na boki
if (keyboard_check_pressed_sides())
{
    //Odbijanie sie od scian podczas slizgania
    if (slide)
    {
        if ((place_meeting(x+5,y,obj_SlideableSolid) && keySide=-1) 
        || (place_meeting(x-5,y,obj_SlideableSolid) && keySide=1))
        {
            hspd=5*keySide;
            vspd=-3;
        }
    }
}

//Zatrzymywanie
if (!keyboard_check_sides())
{
    if ( abs(hspd!=0))
        hspd =max (abs(hspd) - friction ,0) * sign(hspd); 
}

//Graniczenie predkosci pionowej
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
