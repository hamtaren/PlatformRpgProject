///scr_IdDetailInit(ref)
ref = argument0; // obiekt wskazywany
var idDetail = instance_create(ref.x,ref.y,obj_IdDetail);

//inicjalizacja obiektu
idDetail.ref = ref;
idDetail.show = true;
idDetail.varsList = ds_list_create();
