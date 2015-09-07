if (!hidden)
{
    //logika dla chowania sie do beczki
//    show_message("TODO: scr_HeroActionHideoutBarrel !hidden");
    scr_HeroChageState(STATE_HIDE);
}
else
{
    //logika dla wychodzenia z beczki
//    show_message("TODO: scr_HeroActionHideoutBarrel hidden");
    scr_HeroChageState(STATE_MOVE);
}
