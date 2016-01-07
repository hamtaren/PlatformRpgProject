///scr_FootmanStep()
event_inherited();

//KIEDY JEST ZYWY
if (!dead)
{    
    //GDY JUZ ATAKUJEMY
    if (attacking)
    {
        sprite_index = sprite_attack;
        image_speed = scr_AttackSpeedToHandImageSpeed(atSpeed,sprite_get_number(sprite_attack));
        
        //Tworzenie obiektu z obrazeniami
        if (!created && round(image_index) > sprite_get_number(sprite_attack)-2)
        {
            scr_ActorCreateDamage(6,0,obj_DamageSlash);
            sound_play(soundShot);
            created = true;
        }
        
        //Koniec atakowania
        if (round(image_index) > sprite_get_number(sprite_attack)-1)
            attacking = false;
    }
    else
    { 
        sprite_index = sprite_walk;
        created = false;
        
        //CZY WIDZIMY BOHATERA
        if (!collision_line(x,y-4,obj_Hero.x,obj_Hero.y-4,obj_Solid,1,1))
        {
            //OBROT W STRONE BOHATERA
            if (obj_Hero.x<x)        
                image_xscale =-1;        
            else        
                image_xscale =1;                                
    
            //ATAKOWANIE
            if (distance_to_object(obj_Hero) <= 3)
            {
                attacking = true;
                alarm[0] = scr_AttackSpeedToFrames(atSpeed);
                image_index = 0;
                sound_play(choose(soundAttack1,soundAttack2));
            }
            
            //PODAZAMY ZA BOHATEREM
            if (distance_to_object(obj_Hero) < 300 && distance_to_object(obj_Hero) > 3)
            {  
                //CZY NA DRODZE STOI PRZESZKODA
                if (!place_meeting_solid(x+mvSpeed*image_xscale,y))
                {
                    hspd=mvSpeed*image_xscale;
                    image_speed = 0.3; 
                }
                else                        
                {
                    image_speed = 0; //Na drodze stoi nam przeszkoda     
                    image_index = 0;
                }
            }
            else        
            {
                image_speed = 0; //Jestesmy za daleko, albo za blisko, stoimy w miejscu
                image_index = 0;
            }
            
        }
        else
        {
            image_speed = 0;    //Juz nie widzimy bohatera
            image_index = 0;
        }
         
        //ZATRZYMYWANIE SIE   
        if (image_speed == 0)
            hspd = 0;
    }
    
    if (hp<=0 && !dead)
    {
        dead = true;
        image_index = 0;
        image_speed = 0.3;
        hspd = 0;        
        sound_play(soundDead);
    }
}
else
{
    sprite_index = sprite_death;
    hspd = 0;
    //zatrzymanie animacji
    if (image_speed !=0 && round(image_index) > sprite_get_number(sprite_death)-1)
    {
        image_speed = 0;
        image_index = sprite_get_number(sprite_death)-1;   
    }
}
