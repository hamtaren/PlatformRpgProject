///scr_InterfaceBlockMenu(true/false)
//blokowanie wszystkich przyciskow poza KEY_MENU

var bool = argument0;

if (bool) //blokowanie
{
    var block = -9;
    KEY_UP = (block);
    KEY_DOWN = (block);
    KEY_LEFT = (block);
    KEY_RIGHT = (block);
    KEY_ACTION = (block);
    KEY_JUMP = (block);
    KEY_ATTACK = (block);
    KEY_CANCEL = (block);
    KEY_MENU = (ord('W'));
    KEY_SWAP = (block);
    KEY_BREW = (block);
    KEY_MIXTURE = (block);  
    KEY_CHARACTER = (block);
}
else
{
    KEY_UP = (vk_up);
    KEY_DOWN = (vk_down);
    KEY_LEFT = (vk_left);
    KEY_RIGHT = (vk_right);
    KEY_ACTION = (ord('X'));
    KEY_JUMP = (ord('C'));
    KEY_ATTACK = (ord('V'));
    KEY_CANCEL = (ord('Z')); 
    KEY_MENU = (ord('W'));
    KEY_SWAP = (ord('E'));
    KEY_BREW = (ord('R'));
    KEY_MIXTURE = (ord('T'));
    KET_CHARACTER = (ord('Q'));
}
