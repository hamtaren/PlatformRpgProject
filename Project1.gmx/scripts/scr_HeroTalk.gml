///scr_HeroTalk(voiceSound)

if (!sound_isplaying(talk))
{
    talk = argument0;
    sound_play(talk);
}
