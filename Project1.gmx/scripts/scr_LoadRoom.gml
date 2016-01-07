///scr_LoadRoom()
ini_open("savedata.ini");
Room = ini_read_string("Progress","Room",room_get_name(room_Test));
roomie = asset_get_index(Room);
room_goto(roomie);
ini_close();
