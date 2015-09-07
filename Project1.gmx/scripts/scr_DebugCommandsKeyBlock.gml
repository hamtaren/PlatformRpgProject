var bool = argument0;

if (bool) //blokowanie
{
    var block = -9;
    KEY_UP = (block);
    KEY_DOWN = (block);
    KEY_LEFT = (block);
    KEY_RIGHT = (block);
    KEY_ACTION = (block);
    KEY_SPECIAL = (block);
    KEY_ATTACK = (block);
    KEY_CANCEL = (block);
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

