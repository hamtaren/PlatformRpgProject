///scr_HeroStateController()

///Poruszanie sie
if (state == STATE_MOVE)
{
    scr_HeroStateMove();
    scr_HeroAttack();   
    scr_HeroActions();
}
else if (state == STATE_CLIMB)
{
    scr_HeroStateClimb();
}
else if (state == STATE_SHOOT)
{

}

//Animacje
scr_HeroAnimator();

//Regeneracja
scr_HeroRegeneration();

//Picie mikstur
scr_HeroDrink();

//Aktualizacja statystyk
scr_HeroRefreshStatistics();

