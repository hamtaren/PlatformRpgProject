var xx = argument0;
var door = instance_place(xx,y,obj_Door);

//czy mozna otworzyc/zamknac
if (!door.barricaded && !door.bashed)
{    
    if ( (door.key == -1) || ((door.key != -1 && door.key != 3) && objEq.key[door.key]) )
    {
        if (door.key != -1)
        {
            scr_sound_play(s_keyUnlock);
            objEq.key[door.key] = false;
            door.key = -1;
        }
    
        //wywazanie drzwi
        if (abs(hspd) >= moveSpeed && !door.opened)              
        {
            if (stamina>stamBashDoor)
            {
                stamina-=stamBashDoor;
                scr_DoorBash(door);
                scr_sound_play(s_doorBash);
            }
        }   
        //owieranie drzwi
        else if (!door.opened)
        {
            scr_DoorOpen(door);//skyrpt otwierania i zamykania drzwi 
        
            if ((hspd > 0 && door.side =-1) || (hspd <0 && door.side =1)) //jezeli drzwi otwieraja sie na zewnatrz to tracimy tylko polowe szybkosci, jezeli do wewnatrz to musimy sie zatrzymac na moment
                hspd = 0;
            else
                hspd /=2;           
        } 
        //zamykanie drzwi
        else if (door.opened)   //przy zamykaniu trzeba sie zatrzymac
        {
            scr_DoorOpen(door);
            hspd = 0;
        }
    }
    else
    {
        //Komunikaty o tym jak otworzyc drzwi
        scr_sound_play(s_doorKnob);
        if (door.key == 3 && !door.opened)        
            scr_CreatePopUp("Drzwi otwiera zewnętrzny mechanizm");        
        else if (door.key !=3)
        {
            var color = "";
            switch(door.key)
            {
                case 0: color = "brązowego"; break;
                case 1: color = "srebrnego"; break;
                case 2: color = "złotego"; break;                            
            }
            scr_CreatePopUp("Potrzeba "+color+" klucza");
        }
    }
}
