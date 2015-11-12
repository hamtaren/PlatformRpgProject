///scr_InterfaceVariablesInit()
display_set_gui_size(view_wview[0],view_hview[0]);

guiH = display_get_gui_height();
guiW = display_get_gui_width();

//LEWE PRZYCISKI
arrow_left = virtual_key_add(0,guiH - (76*2), 76, 76, KEY_LEFT);
arrow_right = virtual_key_add(76*2,guiH - (76*2), 76,76, KEY_RIGHT);
arrow_up = virtual_key_add(76,guiH - (76*3), 76, 76, KEY_UP);
arrow_down = virtual_key_add(76,guiH - (76), 76, 76 , KEY_DOWN);
//PRAWE PRZYCKISKI
button_attack = virtual_key_add(guiW-(81*3),guiH - (81*2), 81, 81, KEY_ATTACK);
button_action = virtual_key_add(guiW-(81),guiH - (81*2), 81,81, KEY_ACTION);
button_back = virtual_key_add(guiW-(81*2),guiH - (81*3), 81, 81, KEY_CANCEL);
button_jump = virtual_key_add(guiW-(81*2),guiH - (81), 81, 81 , KEY_JUMP);
//PRZYCISKI W ROGACH
button_portrait = virtual_key_add(0,0,81,81,KEY_CHARACTER);
button_menu = virtual_key_add(guiW-81,0,81,81,KEY_MENU);
//PRZYCISKI NA DOLE
button_swap = virtual_key_add(guiW*0.5 - 81-50,guiH-81,81,81,KEY_SWAP);
button_brew = virtual_key_add(guiW*0.5 - 40, guiH-81, 81,81,KEY_BREW);
button_mixture = virtual_key_add(guiW*0.5 +50, guiH-81, 81,81,KEY_MIXTURE);
