///scr_HeroAttack
//atakowanie ;p

if (keyboard_check_pressed(KEY_ATTACK))
{
    if (weaponType == WPN_NONE)         //NIE MA BRONI
    {
        //Marudzenie
        var _talk = choose(v_HeroUnarmed0, v_HeroUnarmed1, v_HeroUnarmed2, v_HeroUnarmed3);
        scr_HeroTalk(_talk);        
    }
    if (weaponType == WPN_MELEE)   //BRON DO WALKI WRECZ
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
    else if (weaponType == WPN_DIST)    //BRON DO STRZELANIA
    {
        //TODO: strzelanie
    }
}
