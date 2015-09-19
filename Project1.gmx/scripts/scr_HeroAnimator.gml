///scr_HeroAnimator()
//skrypt odopwiadajacy za animacje postaci w zaleznosci od jego stanow, akcji i zmiennych

//Animacje poruszania sie
if (state = STATE_MOVE)
{
    if (grav==0) 
    {
        if (abs(hspd)>0) //rusza sie
        {
            image_xscale = sign(hspd);
            sprite_index = spr_HeroMask;
        }
        else //stoi w miejscu
        {
            sprite_index = spr_HeroMask;
        }
    }
    else //jezeli jest w powietrzu
    {        
        if (slide) //Animacja spadania przy scianie (taki niby slide), nie wlacza sie na drzwiach
        {
            sprite_index = spr_HeroWallSlide;
            
            //ustalanie w ktora strone odwrocony jest obrazek
            if (place_meeting(x-5,y,obj_SlideableSolid))
                image_xscale = -1;
            else if (place_meeting(x+5,y,obj_SlideableSolid))
                image_xscale = 1;            
        }
        else //Zwykle spadanie
        {
            sprite_index = spr_HeroMask;
            if (abs(hspd)>0)
            {
                //odwraca sie w strone w ktora jest skierowana predkosc
                image_xscale = sign(hspd); 
            }
        }
    }
}
else if (state == STATE_CLIMB)
{
    sprite_index = spr_HeroClimb;
}
