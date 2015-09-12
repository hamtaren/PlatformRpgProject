list = ds_list_create();

//tworzenie map z łączeniami
maps[0] = ds_map_create();
ds_map_add(maps[0],"type",BIND_DOOR_TO_LEAVER);
ds_map_add(maps[0],"door",100005);
ds_map_add(maps[0],"leaver",100038);

mapsCount = 1;// <- ostatni numer przy maps+1 , proste :)
//dodawanie łączeń
for (var i = 0; i < mapsCount; i++)
    ds_list_add(list,maps[i]);
    
debug_log("Stworzono " + string(mapsCount) + " połączeń",DEBUG_SUCCESS);

