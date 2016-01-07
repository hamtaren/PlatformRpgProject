//skrypt przeciagania dzwigni
var leaver = argument0;

if (leaver!=noone)
{
    if (leaver.turned)
    {
        sound_play(s_Lever);
        leaver.turnOn = !leaver.turnOn; //zmiana
        leaver.turned = false;          //poniewaz zmienilismy to dzwignia nie jest jeszcze przeciagnieta na miejsce docelowe
        leaver.trigger = true;
    }
}
