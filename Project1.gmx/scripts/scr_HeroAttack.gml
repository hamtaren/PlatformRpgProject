///scr_HeroAttack
//atakowanie ;p

if (keyboard_check_pressed(KEY_ATTACK))
{
    if (objEq.weaponType == WPN_MELEE)   //BRON DO WALKI WRECZ
    {
        if (instance_exists(objEq.melee[objEq.mSel]))
        {
            if (stamina>stamAttack)
            {
                if (!attacking)
                {
                attacking=true;
                stamina -= stamAttack;
                hand_index = 0;        
                }
            }
        }
        else
        {
            //Marudzenie
            var _talk = choose(v_HeroUnarmed0, v_HeroUnarmed1, v_HeroUnarmed2, v_HeroUnarmed3);
            scr_HeroTalk(_talk); 
        }
    }
    else if (objEq.weaponType == WPN_DIST)    //BRON DO STRZELANIA
    {
        if (instance_exists(objEq.distance[objEq.dSel]))
        {
            var wpn = objEq.distance[objEq.dSel];
            
            if (wpn.ohth == 1) // jednoreczne bronie
            {
                if (!attacking)
                {
                    if (scr_ItemDistCheckAmmo(objEq.distance[objEq.dSel]))
                    {
                        attacking=true; //reszta strzelania odbywa sie w animatorze
                        hand_index = 0;        
                    }
                }
            }
            else 
            {
                //Mozemy strzelac tylko jezeli nie spadamy i jestesmy w STATE_MOVE
                if (state == STATE_MOVE && grav == 0 && vspd == 0)                
                    scr_HeroChageState(STATE_SHOOT);
                else
                {
                    if (!attacking)
                    {
                        if (shootingSequence== SHOOT_TARGET)
                            shootingSequence = SHOOT_SHOT;                                            
                    }
                }
            }
        }
        else
        {
            //Marudzenie
            var _talk = choose(v_HeroUnarmed0, v_HeroUnarmed1, v_HeroUnarmed2, v_HeroUnarmed3);
            scr_HeroTalk(_talk); 
        }
    }
}
