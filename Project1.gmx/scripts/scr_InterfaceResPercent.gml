///scr_InterfaceResPercent(resVariableValue)
//zamienia wartosci na procenty

var res = argument0;
var str;

str = string(round((1-res)*100))+"%";

return str;
