///scr_HeroAnimator()
//skrypt odopwiadajacy za animacje postaci w zaleznosci od jego stanow, akcji i zmiennych

//Atakowanie
if (attacking && state!=STATE_SHOOT)
{
    var selWpn;
    if (!objEq.weaponType) //melee
        selWpn = objEq.melee[objEq.mSel];
    else                  //distance
        selWpn = objEq.distance[objEq.dSel];
    
    sprite_hand = scr_HeroAnimatorHandSpriteCalc(selWpn);       //okresla jaki bedzie obrazek reki w ktorej moze byc bron    
    hand_image_speed = scr_AttackSpeedToHandImageSpeed(attackSpeed,sprite_get_number(sprite_hand)); //szybkosc tego obrazka
    
    hand_index+=hand_image_speed; //animacja reki w ktorej moze byc bron

    
    if (!objEq.weaponType) // dla meleesow
    {
        if (hand_index >=sprite_get_number(sprite_hand)-2)
        {
            if (!attackCreated)
            {
                attackCreated = true;
                //todo: dzwiek ataku (swist)
                scr_ActorCreateDamage(5,0,obj_DamageSlash);
            }
        }
        
        if (round(hand_index) >= sprite_get_number(sprite_hand))
        {
            attacking = false;
            attackCreated = false;
            hand_index = 0;        
        }
    }
    else    //dla distanceow
    {
        if (hand_index >=1)
        {
            if (!attackCreated)
            {
                attackCreated = true;
                var bullet = scr_HeroPrepareProjectile();
                
                shootingDir = 2;
                scr_ActorCreateDamage(10,-14,bullet);
                //todo: dzwiek strzalu
            }
        }
        
        if (round(hand_index) >= sprite_get_number(sprite_hand))
        {
            attacking = false;
            attackCreated = false;
            hand_index = 0;        
        }
    }
}



if (state = STATE_MOVE)
{
    if (grav==0) 
    {
        if (abs(hspd)>0) //rusza sie
        {
            if (!attacking)
            {
                sprite_hand = spr_HeroHandRun;
                hand_index = image_index;
            }
            image_xscale = sign(hspd);
            sprite_index = spr_HeroRun;
            image_speed = clamp(abs(hspd/0.25),0.1,0.4);
        }
        else //stoi w miejscu
        {
            if (!attacking)
            {
                sprite_hand = spr_HeroHandStand;
                hand_index = 0;
            }
            sprite_index = spr_HeroStand;
            image_index = 0;
            image_speed = 0;        
        }
    }
    else //jezeli jest w powietrzu
    {        
        if (slide) //Animacja spadania przy scianie (taki niby slide), nie wlacza sie na drzwiach
        {
            sprite_hand = spr_null;
            sprite_index = spr_HeroWallSlide;                        
            //ustalanie w ktora strone odwrocony jest obrazek
            if (place_meeting(x-5,y,obj_SlideableSolid))
                image_xscale = -1;
            else if (place_meeting(x+5,y,obj_SlideableSolid))
                image_xscale = 1;            
        }
        else //Zwykle spadanie
        {
            if (!attacking)
            {
                sprite_hand = spr_HeroRun;
                hand_index = image_index;
            }
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
    sprite_hand = spr_null;
    sprite_index = spr_HeroClimb;
    if (keyboard_check(KEY_UP) || keyboard_check(KEY_DOWN))
    {
        image_speed = 0.5;
    }
    else
    {
        image_speed = 0;        
    }
}
else if (state == STATE_SHOOT) //Strzelanie z broni dwurecznej
{
    var selWpn;
    selWpn = objEq.distance[objEq.dSel];
    if (instance_exists(selWpn))
    {
        //Sprite rak i broni
        sprite_hand = scr_ItemDistGetSpriteForHero(selWpn,false);
        //zmiana sprita bohatera
        sprite_index = spr_HeroShoot;
        if (shootingSequence == SHOOT_TARGET) //podczas celowania nie ma animacji
        {
            hand_image_speed = 0;
            hand_index = shootingDir; // obrazek reprezentuje kierunek w ktorym celuje bohater
        }
        else if (shootingSequence == SHOOT_RELOAD) //animacja ladowania
        {
            sprite_hand = scr_ItemDistGetSpriteForHero(selWpn,true);
            hand_image_speed = scr_AttackSpeedToHandImageSpeed(attackSpeed,sprite_get_number(sprite_hand));
            
            hand_index+=hand_image_speed;
            
            //koniec ladowania
            if (round(hand_index) >= sprite_get_number(sprite_hand))        
                attacking = false;                  
        }
    }
}
