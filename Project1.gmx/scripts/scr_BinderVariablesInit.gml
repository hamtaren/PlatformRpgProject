///scr_BinderVariableInit
//Pamietaj ze to musi byc obiekt ktory jest stworzony po kazdym ktory laczy, czyli ostatni
//tworzenie tablicy maps[] z łączeniami 

scr_BinderAddBindingPair(0,BIND_DOOR_TO_LEAVER,100032,100035);
scr_BinderAddBindingPair(1,BIND_DOOR_TO_LEAVER,100033,100070);

mapsCount = 2;// <- ostatni numer +1 , proste :)

//fizyczne łączenie
for (var i = 0; i < mapsCount; i++)
    scr_BinderBinds(i);
    
debug_log("Stworzono " + string(mapsCount) + " połączeń",DEBUG_SUCCESS);