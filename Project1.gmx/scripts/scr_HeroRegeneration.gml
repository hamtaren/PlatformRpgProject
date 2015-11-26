///scr_HeroRegeneration()
//Regneracja zycia i staminy

if (stamina>=staminaMax*0.8)
{
    hp = min(hp+hpReg,hpMax);
}

stamina = min(stamina+staminaReg,staminaMax);
