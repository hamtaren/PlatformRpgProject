//scr_HeroActionHideouts()
if (place_meeting(x,y,obj_Hideout) && grav=0) //nie mozna sie chowac nie dotykajac ziemi
{
    var hideout = instance_place(x,y,obj_Hideout);
    switch (hideout.type)
    {
        case HIDEOUT_BARREL: scr_HeroActionHideoutBarrel(); break;
        default: show_message("default hideout"); break;
    }
}
