///scr_HeroDrink()
//picie mikstur
if (keyboard_check_pressed(KEY_BREW))
{
    if (objEq.brews>0 && stamina < staminaMax)
    {
        scr_sound_play(s_drinkPotion);
        stamina = staminaMax;
        objEq.brews--;
    }
}
else if (keyboard_check_pressed(KEY_MIXTURE))
{
    if (objEq.mixtures>0 && hp < hpMax)
    {
        scr_sound_play(s_drinkPotion);
        hp = hpMax;
        objEq.mixtures--;
    }
}
