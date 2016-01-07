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
            shootingDir = point_direction(x,y-32,obj_Hero.x,obj_Hero.y-32);
            scr_ActorCreateDamage(6,-sprite_get_height(sprite_attack)*0.5,bullet);
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
            var dist = distance_to_object(obj_Hero);
        
            //OBROT W STRONE BOHATERA GDY NIE UCIEKA
            if (dist>=50)
            {
                if (obj_Hero.x<x)        
                    image_xscale =-1;        
                else        
                    image_xscale =1;  
            }                                              
                
            //ZACHOWANIA
            if (dist < 50) //FLEE
            {
                if (obj_Hero.x < x)                
                    image_xscale = 1;                
                else                
                    image_xscale = -1;
                                                                    /////
                if (!place_meeting_solid(x+mvSpeed*image_xscale,y) && place_meeting_solid(x+mvSpeed*image_xscale*2,y+2))
                {           
                    hspd = mvSpeed*image_xscale;
                    image_speed = 0.3;                 
                }
                else
                {
                    hspd = 0;
                    attacking = true;
                    alarm[0] = scr_AttackSpeedToFrames(atSpeed);
                    image_index = 0;
                    
                    if (obj_Hero.x < x)                
                        image_xscale = -1;                
                    else                
                        image_xscale = 1;
                }
            }
            else if (dist < 150) //ATTACK
            {
                hspd = 0;
                attacking = true;
                alarm[0] = scr_AttackSpeedToFrames(atSpeed);
                image_index = 0;
            }
            else if (dist < 300) //FOLLOW
            {
                //CZY NA DRODZE STOI PRZESZKODA
                if (!place_meeting_solid(x+mvSpeed*image_xscale*2,y+2) && !place_meeting_solid(x+mvSpeed*image_xscale*2,y))
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
            else    //STAND            
            {
                image_speed = 0;                                   
                image_index =0 ;
            }
            
        }
        else
        {
            image_speed = 0;    //Juz nie widzimy bohatera
            image_index =0 ;
        }
         
        //zatrzymywanie przed dziura
        if (!place_meeting_solid(x+mvSpeed*image_xscale*2,y+2) && !place_meeting_solid(x+mvSpeed*image_xscale*2,y))
            hspd = 0;
            
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
