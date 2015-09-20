///scr_BinderVariableInit
//Pamietaj ze to musi byc obiekt ktory jest stworzony po kazdym ktory laczy, czyli ostatni

mapsCount = 0; //ilosc polaczen

//tworzenie tablicy maps[] z łączeniami 
scr_BinderAddBindingPair(BIND_DOOR_TO_LEAVER,100026,100029);

//fizyczne łączenie
for (var i = 0; i < mapsCount; i++)
    scr_BinderBinds(i);
    
debug_log("Stworzono " + string(mapsCount) + " połączeń",DEBUG_SUCCESS);
