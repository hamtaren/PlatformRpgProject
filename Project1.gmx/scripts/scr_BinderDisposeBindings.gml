///scr_BinderDisposeBindings
//czyszczenie pamieci ze wszystkich map z połączeniami

for (var i = 0; i < mapsCount; i++)
    ds_map_destroy(maps[i]);
    
debug_log("Wyczyszczono liste połączeń BindingController.maps[i]", DEBUG_SUCCESS);
