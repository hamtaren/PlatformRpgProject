///scr_HeroStateShoot()

//CELOWANIE: stad mozemy wyjsc z state'a, zmieniac kierunek i strzelac
if (shootingSequence == SHOOT_TARGET)
{
    //WYCHODZENIE Z CELOWANIA LUB ZACZYNAMY SPADAC (wiec juz nie celujemy)
    if (keyboard_check_pressed(KEY_CANCEL) || (grav != 0 && vspd != 0))    
        scr_HeroChageState(STATE_MOVE);    
    
    //ZMIANA STRON
    if (keyboard_check_pressed(KEY_LEFT))    
        image_xscale = -1;
    else if (keyboard_check_pressed(KEY_RIGHT))    
        image_xscale = 1;
        
    //CELOWANIE
    if (keyboard_check_pressed(KEY_UP))
    {
        if (shootingDir<4)
            shootingDir++;
    }
    else if (keyboard_check_pressed(KEY_DOWN))
    {
        if (shootingDir>0)
            shootingDir--;
    }
    
}
else if (shootingSequence == SHOOT_SHOT)
{
    if (scr_ItemDistCheckAmmo(objEq.distance[objEq.dSel]))
    {
        attacking = true;
        hand_index = 0;
        shootingSequence = SHOOT_RELOAD;
        sound_play(s_doorBash);
        
        //Tworzenie pocisku        
        var xx,yy,bullet;
        
        //Przesuniecie pocisku ze wzgledu na to gdzie celuje bohater
        switch(shootingDir)
        {
            case 0: xx = 8; yy = -3; break;
            case 1: xx = 12; yy = -5; break;
            case 2: xx = 14; yy = -12; break;
            case 3: xx = 12; yy = -19; break;
            case 4: xx = 8; yy = -24; break;
            default: xx = 0; yy = 0; break;                                                
        }
        
        bullet = scr_HeroPrepareProjectile();       
        
        scr_ActorCreateDamage(xx,yy,bullet);        
    }
    else
    {
        show_message("BRAK AMUNICJI");
        shootingSequence = SHOOT_TARGET;
    }
}
else if (shootingSequence == SHOOT_RELOAD)
{
    if (!attacking)
        shootingSequence = SHOOT_TARGET;
}

