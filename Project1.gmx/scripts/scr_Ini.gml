///scr_Ini()
//inicjalizacja zmiennych globalnych i innych rzeczy

//PRZYCISKI DO STEROWANIA
globalvar KEY_UP, KEY_DOWN, KEY_RIGHT, KEY_LEFT, KEY_ACTION, KEY_JUMP, KEY_CANCEL, KEY_ATTACK,KEY_CHARACTER,KEY_MENU,KEY_SWAP,KEY_BREW,KEY_MIXTURE;

KEY_UP = (vk_up);
KEY_DOWN = (vk_down);
KEY_LEFT = (vk_left);
KEY_RIGHT = (vk_right);

KEY_ACTION = (ord('X'));
KEY_JUMP = (ord('C'));
KEY_ATTACK = (ord('V'));
KEY_CANCEL = (ord('Z'));   

KEY_CHARACTER = (ord('Q'));
KEY_MENU = (ord('W'));
KEY_SWAP = (ord('E'));
KEY_BREW = (ord('R'));
KEY_MIXTURE = (ord('T'));
//STWORZENIE CZASTECZEK
scr_ParticlesInit();

Loaded = true;

if (room == room_Loader)
{
    scr_LoadRoom();
    Loaded = false;
}
else //normalna gra
    room_goto_next();
    
globalvar SOUND_ON;
SOUND_ON = true;
