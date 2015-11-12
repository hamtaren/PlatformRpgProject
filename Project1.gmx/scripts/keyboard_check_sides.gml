//sprawdza w ktora strone przycisniety jest kierunek lewo/prawo
if (keyboard_check(KEY_RIGHT) && !keyboard_check(KEY_LEFT))
{
    keySide = 1;
    return true;
}
else if (keyboard_check(KEY_LEFT) && !keyboard_check(KEY_RIGHT))
{
    keySide = -1;
    return true;
}
return false;
