///scr_HeroAnimator()
//skrypt odopwiadajacy za animacje postaci w zaleznosci od jego stanow, akcji i zmiennych

//Animacje poruszania sie
if (state = STATE_MOVE)
{
    if (grav==0) //jezeli jest na ziemi
    {
        if (abs(hspd)>0) //jezeli sie porusza
        {
            image_xscale = sign(hspd); //odwraca sie w strone w ktora jest skierowana predkosc
            sprite_index = spr_HeroMask;
        }
        else
        {
            sprite_index = spr_HeroMask;
        }
    }
    else //jezeli jest w powietrzu
    {
        //Animacja spadania przy scianie (taki niby slide), nie wlacza sie na drzwiach
        if (place_meeting_solid(x+1,y) && !place_meeting(x+1,y,obj_Door))
        {
            sprite_index = spr_HeroWallSlide; //rysowane tak ze sciana jest z prawej
            image_xscale = 1;
        }
        else if (place_meeting_solid(x-1,y) && !place_meeting(x-1,y,obj_Door))
        {
            sprite_index = spr_HeroWallSlide;
            image_xscale = -1;
        }
        else
        {
            sprite_index = spr_HeroMask;
            if (abs(hspd)>0)
            {
                image_xscale = sign(hspd); //odwraca sie w strone w ktora jest skierowana predkosc
            }
        }
    }
}
else if (state == STATE_CLIMB)
{
    sprite_index = spr_HeroClimb;
}
