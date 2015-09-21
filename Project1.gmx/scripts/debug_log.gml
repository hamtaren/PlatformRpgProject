///debug_log(text,type)
//tym skryptem wywolujemy logi z pozycji obiektow
var text = "[" + string(id) + "] " + string(argument0);
var type = argument1;

var txt = "";

//petla robiona po to zeby miescil sie wiekszy napis niz szerokosc ekranu
for (var i = string_length(text) div 78; i>=0; i--)
{
    //bierzemy kawalki tekstu od konca, zeby wywolujac sprawic wrazenie ze to jeden dlugi log, ktory zawija sie na koncu ekranu
    txt = string_copy(text,i*78 +1,78);        
            
    var mapLog = ds_map_create(); 
       
    //stworzenie mapy logow
    ds_map_add(mapLog,"log",txt);
    ds_map_add(mapLog,"type",type);

    //dodanie mapy do listy logow w debugerze (zakodowujemy w jsonie zeby nie bylo problemu ze strukturami)
    var json = json_encode(mapLog);
    ds_list_add(obj_DebugController.log, json);
    
    //czyszczenie pamieci
    ds_map_destroy(mapLog);
}
