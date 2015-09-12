///scr_IdDetailVarsMapCreate(varName,varValue)
var varName = argument0;
var varValue = argument1;

var varsMap = ds_map_create();
varsMap[? "Name"] = argument0;
varsMap[? "Value"] = argument1;

json = json_encode(varsMap);

ds_list_add(varsList,json);
