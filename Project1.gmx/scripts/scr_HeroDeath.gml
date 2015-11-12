///scr_HeroDeath()
if (instance_exists(obj_DebugController) && !obj_DebugController.godMode)
{
    dead = true;
    hp = 0;
    debug_log("DEATH",DEBUG_WARN);
}
