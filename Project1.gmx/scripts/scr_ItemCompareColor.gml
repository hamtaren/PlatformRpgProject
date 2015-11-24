///scr_ItemCompareColor(eqItemVal,targetItemVal)
//zwracanie koloru
eqItem = argument0;
targetItem = argument1;

//Posiadany item jest gorszy
if (eqItem < targetItem)
    return c_lime;
//Posiadany item jest lepszy
else if (eqItem > targetItem)
    return c_red;
//Nie ma roznicy
else
    return c_white;
