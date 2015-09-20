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
            sprite_index = spr_HeroRun;
            image_speed = clamp(abs(hspd/0.25),0.1,0.3);
        }
        else //stoi w miejscu
        {
            sprite_index = spr_HeroRun;
            image_index = 0;
            image_speed = 0;
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
            sprite_index = spr_HeroRun;
            image_speed=0; 
            image_index = 2;
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
