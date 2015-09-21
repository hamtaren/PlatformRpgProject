///scr_HeroAttack
//atakowanie ;p

if (keyboard_check_pressed(KEY_ATTACK))
{
    scr_ActorCreateDamage(5,0,obj_DamageSlash);
}
