///scr_HeroStateController()

///Poruszanie sie
if (state == STATE_MOVE)
{
    scr_HeroMove();
    //scr_HeroAttack();   //todo
    scr_HeroActions();
}
else if (state == STATE_CLIMB)
{
    scr_HeroClimb();
}
else if (state == STATE_HIDE)
{
//UWAGA! W przyszlosci mozliwe ze niektorych akcji nie bedzie mozna wykonac bedac w kryjowce, dlatego zostawiam tu taki znacznik zeby o tym pamietac
    scr_HeroActions();
}
scr_HeroAnimator();
