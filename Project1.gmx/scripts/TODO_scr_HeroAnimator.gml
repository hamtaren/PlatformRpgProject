///scr_HeroAnimator()
//skrypt odopwiadajacy za animacje postaci w zaleznosci od jego stanow, akcji i zmiennych
//todo poprawic tak zeby bylo git :) indent i logic
//Animacje poruszania sie
if (state = STATE_MOVE)
{
	if (grav==0) //jezeli jest na ziemi
	{		
		if (abs(vspd)>0) //jezeli sie porusza
		{			
			image_xscale = sign(vspd); //odwraca sie w strone w ktora jest skierowana predkosc
				//animation logic ...
		}

	
	
	}
	else //jezeli jest w powietrzu
	{
		//Animacja spadania przy scianie (taki niby slide)
		if (place_meeting_solid(x+1,y))
		{
			sprite_index = spr_HeroWallSlide; //rysowane tak ze sciana jest z prawej
			image_xscale = 1;
		}
		else if (place_meeting_solid(x-1,y))
		{
			sprite_index = spr_HeroWallSlide;
			image_xscale = -1;
		}
	}
}

