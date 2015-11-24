///scr_InterfaceVariablesInit()
display_set_gui_size(view_wview[0],view_hview[0]);

guiH = display_get_gui_height();
guiW = display_get_gui_width();

//LEWE PRZYCISKI
arrow_left = virtual_key_add(0,guiH - (38*2), 38, 38, KEY_LEFT);
arrow_right = virtual_key_add(38*2,guiH - (38*2), 38,38, KEY_RIGHT);
arrow_up = virtual_key_add(38,guiH - (38*3), 38, 38, KEY_UP);
arrow_down = virtual_key_add(38,guiH - (38), 38, 38 , KEY_DOWN);
//PRAWE PRZYCKISKI
button_attack = virtual_key_add(guiW-(40*3),guiH - (40*2), 40, 40, KEY_ATTACK);
button_action = virtual_key_add(guiW-(40),guiH - (40*2), 40,40, KEY_ACTION);
button_back = virtual_key_add(guiW-(40*2),guiH - (40*3), 40, 40, KEY_CANCEL);
button_jump = virtual_key_add(guiW-(40*2),guiH - (40), 40, 40 , KEY_JUMP);
//PRZYCISKI W ROGACH
button_portrait = virtual_key_add(0,0,40,40,KEY_CHARACTER);
button_menu = virtual_key_add(guiW-40,0,40,40,KEY_MENU);
//PRZYCISKI NA DOLE
button_swap = virtual_key_add(guiW*0.5 - 40-25,guiH-40,40,40,KEY_SWAP);
button_brew = virtual_key_add(guiW*0.5 - 20, guiH-40, 40,40,KEY_BREW);
button_mixture = virtual_key_add(guiW*0.5 +25, guiH-40, 40,40,KEY_MIXTURE);

//KARTA POSTACI
characterPage = PAGE_NONE; //ktora strona jest wyswietlona
