///scr_HeroDrink()
//picie mikstur
if (keyboard_check_pressed(KEY_BREW))
{
    if (brews>0 && stamina < staminaMax)
    {
        sound_play(s_drinkPotion);
        stamina = staminaMax;
        brews--;
    }
}
else if (keyboard_check_pressed(KEY_MIXTURE))
{
    if (mixtures>0 && hp < hpMax)
    {
        sound_play(s_drinkPotion);
        hp = hpMax;
        mixtures--;
    }
}
