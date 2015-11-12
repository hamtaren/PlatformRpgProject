///scr_HeroRegeneration()
//Regneracja zycia i staminy

if (stamina>=staminaMax)
{
    hp = min(hp+hpReg,hpMax);
}

stamina = min(stamina+staminaReg,staminaMax);
