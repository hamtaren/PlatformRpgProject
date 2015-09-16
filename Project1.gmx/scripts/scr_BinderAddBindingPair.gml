///scr_BinderAddBinding(mapIndex,BIND_TYPE,bindingTargetId,bindingToId)
//skrypt laczenia wartsci z jednego obiekt z jakas zmienna w drugim

var mapIndex = argument0;           //do ktorej mapy bedziemy to laczyc
var bindType = argument1;           //typ laczenia: BIND_ ...
var bindingTargetId = argument2;    //co łączymy (potrzebujemy tylko wartosci do przekazania)
var bindingToId = argument3;        //do czego (wartosc pomoze nam namierzyc obiekt, ktoremu chcemy przypisac powyzsza wartosc do jakiejs zmiennej, albo czegostam)

maps[mapIndex] = ds_map_create(); 
ds_map_add(maps[mapIndex],"type",bindType);
ds_map_add(maps[mapIndex],"bindTarget",bindingTargetId);
ds_map_add(maps[mapIndex],"bindTo",bindingToId);