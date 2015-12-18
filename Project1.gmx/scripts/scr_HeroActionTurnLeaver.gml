//skrypt przeciagania dzwigni
var leaver = argument0;

if (leaver!=noone)
{
    if (leaver.turned)
    {
        leaver.turnOn = !leaver.turnOn; //zmiana
        leaver.turned = false;          //poniewaz zmienilismy to dzwignia nie jest jeszcze przeciagnieta na miejsce docelowe
        leaver.trigger = true;
    }
}
else
    debug_log("Nie mozna ciagnac dzwigni, bo leaver == noone!",DEBUG_ERROR);
