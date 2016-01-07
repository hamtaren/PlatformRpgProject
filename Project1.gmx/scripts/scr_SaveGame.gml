///scr_SaveGame(room)
var rm = argument0;
ini_open("savedata.ini");
//////Zapisywanie informacji ogolnych////
ini_write_string("Progress","Room",room_get_name(rm));

//////Zapisywanie statystyk bohatera//////
scr_SaveHero();
//////Zapisywanie ekwipunku bohatera//////
scr_SaveEq();

ini_close();
