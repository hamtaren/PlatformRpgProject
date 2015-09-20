///scr_BinderAddBinding(BIND_TYPE,bindingTargetId,bindingToId)
//skrypt laczenia wartsci z jednego obiekt z jakas zmienna w drugim

var bindType = argument0;           //typ laczenia: BIND_ ...
var bindingTargetId = argument1;    //co łączymy (potrzebujemy tylko wartosci do przekazania)
var bindingToId = argument2;        //do czego (wartosc pomoze nam namierzyc obiekt, ktoremu chcemy przypisac powyzsza wartosc do jakiejs zmiennej, albo czegostam)

maps[mapsCount] = ds_map_create(); 
ds_map_add(maps[mapsCount],"type",bindType);
ds_map_add(maps[mapsCount],"bindTarget",bindingTargetId);
ds_map_add(maps[mapsCount],"bindTo",bindingToId);

mapsCount++;
