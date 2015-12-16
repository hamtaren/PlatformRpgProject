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
    scr_HeroStateShoot();
    scr_HeroAttack();
}

//Wykrywanie itemow
if (place_meeting(x,y,obj_Item))
    itemToPickUp = instance_nearest(x,y,obj_Item);      
else
    itemToPickUp = noone;
    
//Zmiana broni
if (keyboard_check_pressed(KEY_SWAP))
{
    if (!attacking)
    {
        if ((state = STATE_SHOOT && shootingSequence==SHOOT_TARGET) || state !=STATE_SHOOT)
        {
            if (state!=STATE_MOVE)
                scr_HeroChageState(STATE_MOVE);                    
            objEq.weaponType =! objEq.weaponType;
        }        
    }
}

//Animacje
scr_HeroAnimator();

//Regeneracja
scr_HeroRegeneration();

//Picie mikstur
scr_HeroDrink();

//Aktualizacja statystyk
scr_HeroRefreshStatistics();

