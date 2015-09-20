///scr_DoorBash(refDoor)
//wywazanie drzwi

door = argument0;

if (instance_exists(door))
{
    door.bashed = true;
    door.opened = true;
    door.image_index = sprite_get_number(door.sprite_index)-1; //sprite otwartych drzwi
    with (door) scr_ParticlesWoodCreate(25);                //tworzy drzazgi ;p
    if (x<door.x)
    {
        // wywala drzwi w prawo
        door.side = 1;
    }   
    else
    {
        // wywala drzwi w lewo
        door.side = -1;
    }
}
else
    debug_log("Nie mozna wywazyc drzwi, bo door==noone",DEBUG_ERROR);
