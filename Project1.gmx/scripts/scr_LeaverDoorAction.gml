///scr_LeaverDoorAction()

event_inherited(); //animacja i mechanizm pociagania za dzwignie

//otwieranie drzwi
if (turned && opened)
{
    opened = false;
    scr_DoorOpen(door);
}
else if (!turned)
    opened = true;
