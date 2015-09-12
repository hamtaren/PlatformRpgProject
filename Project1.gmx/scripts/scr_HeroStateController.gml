///scr_HeroStateController()

///Poruszanie sie
if (state == STATE_MOVE)
{
    scr_HeroStateMove();
    //TODO://scr_HeroAttack();   
    scr_HeroActions();
}
else if (state == STATE_CLIMB)
{
    scr_HeroStateClimb();
}
else if (state == STATE_HIDE)
{
//UWAGA! W przyszlosci mozliwe ze niektorych akcji nie bedzie mozna wykonac bedac w kryjowce, dlatego zostawiam tu taki znacznik zeby o tym pamietac
    scr_HeroActions();
}
//Animacje
scr_HeroAnimator();
