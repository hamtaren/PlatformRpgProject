///scr_HeroMove

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
if (!place_meeting_solid(x-hspd-moveAcc, y))
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
if (!place_meeting_solid(x+hspd+moveAcc, y))
{
    if (keyboard_check(KEY_RIGHT) && !keyboard_check(KEY_LEFT) && grav==0)
    {
        var multi = 1;
    
        if (hspd<0)
            multi=5;

        hspd += multi*moveAcc; 
    }
}


//Odbijanie sie od scian podczas spadania
if (hspd==0 && grav>0)
{
    if (place_meeting_solid(x+5,y) && keyboard_check_pressed(KEY_LEFT))
    {
        hspd=-5;
        vspd=-3;
    }
    else if (place_meeting_solid(x-5,y) && keyboard_check_pressed(KEY_RIGHT))
    {
        hspd=5;
        vspd=-3;
    }
}

//Zatrzymywanie
if !(keyboard_check(KEY_LEFT) or keyboard_check(KEY_RIGHT))
{
    if (hspd>0)
    hspd = max(hspd-friction*sign(hspd),0);
    else if (hspd<0)
    hspd = min(hspd-friction*sign(hspd),0);
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
    x+=hspd;
 
//Pionowe wykrywanie zblizajacych sie solidow   
if (place_meeting_solid(x, y +vspd))
{
    while(!place_meeting_solid(x, y +sign(vspd)))
        y+= sign(vspd);
    vspd = 0;
}
    y+=vspd;
