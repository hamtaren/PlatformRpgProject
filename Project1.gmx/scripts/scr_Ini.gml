///scr_Ini()
//inicjalizacja zmiennych globalnych i innych rzeczy

//PRZYCISKI DO STEROWANIA
globalvar KEY_UP, KEY_DOWN, KEY_RIGHT, KEY_LEFT, KEY_ACTION, KEY_SPECIAL, KEY_CANCEL, KEY_ATTACK;

if (file_exists("config.ini"))
{
    ini_open("config.ini");
    KEY_UP = ini_read_real("key_input","key_up",vk_up);
    KEY_DOWN = ini_read_real("key_input","key_down",vk_down);
    KEY_LEFT = ini_read_real("key_input","key_up",vk_left);
    KEY_RIGHT = ini_read_real("key_input","key_up",vk_right);
    KEY_ACTION = ini_read_real("key_input","key_up",ord('X'));
    KEY_SPECIAL = ini_read_real("key_input","key_up",ord('C'));
    KEY_ATTACK = ini_read_real("key_input","key_up",ord('V'));
    KEY_CANCEL = ini_read_real("key_input","key_up",ord('Z'));    
    ini_close();
}
else
{
    KEY_UP = (vk_up);
    KEY_DOWN = (vk_down);
    KEY_LEFT = (vk_left);
    KEY_RIGHT = (vk_right);
    KEY_ACTION = (ord('X'));
    KEY_SPECIAL = (ord('C'));
    KEY_ATTACK = (ord('V'));
    KEY_CANCEL = (ord('Z'));   
}

room_goto_next();
