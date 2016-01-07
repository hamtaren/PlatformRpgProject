///GRAVITY
//wykrywanie podloza/grawitacja/tarcie
if (!place_meeting_solid(x,y+vspd+1))
{
    grav = 0.5;
    vspd+=grav;  
}
else
    grav = 0;


//Poziome wykrywanie zblizajacych sie solidow
if (place_meeting_solid(x+hspd,y))
{
    while(!place_meeting_solid(x+sign(hspd),y))
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
