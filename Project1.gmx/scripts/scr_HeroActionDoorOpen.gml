var xx = argument0;

var door = instance_place(xx,y,obj_Door);

//czy mozna otworzyc/zamknac
if (!door.keyClosed && !door.barricaded && !door.bashed)
{    
    //wywazanie drzwi
    if (abs(hspd) > moveSpeed && !door.opened)
    {
        door.bashed = true; //po wywazeniu drzwi sa niezamykalne        
        if (hspd>0) then door.side = 1;//wywazenie drzwi otwiera je zgodnie z kierunkiem predkosci bohatera
        else if (hspd<0) then door.side =-1;
    }      
    else if (!door.opened)
    {
    //jezeli drzwi otwieraja sie na zewnatrz to tracimy tylko polowe szybkosci, jezeli do wewnatrz to musimy sie zatrzymac na moment
        if ((hspd > 0 && door.side =-1) || (hspd <0 && door.side =1))
            hspd = 0;
        else
            hspd /=2;
    } 
    else if (door.opened)   //przy zamykaniu trzeba sie zatrzymac
        hspd = 0;
    
    //otwieranie/zamykanie
    door.opened = !door.opened;
}