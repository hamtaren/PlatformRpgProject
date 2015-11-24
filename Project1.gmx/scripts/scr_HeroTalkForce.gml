///scr_HeroTalkForce(voiceSound)

if (sound_isplaying(talk))
{
    sound_stop(talk);
    talk = argument0;
    sound_play(talk);
}
