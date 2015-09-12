var xx = argument0;
var door = instance_place(xx,y,obj_Door);

//czy mozna otworzyc/zamknac
if (!door.keyClosed && !door.barricaded && !door.bashed)
{    
    //wywazanie drzwi
    if (abs(hspd) > moveSpeed && !door.opened)
    {           
        //TODO:scr_DoorBash(door);
        door.bashed = true; //po wywazeniu drzwi sa niezamykalne   
        
        if (hspd>0) //wywazenie drzwi otwiera je zgodnie z kierunkiem predkosci bohatera
            door.side = 1;
        else if (hspd<0)
            door.side =-1;          
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
