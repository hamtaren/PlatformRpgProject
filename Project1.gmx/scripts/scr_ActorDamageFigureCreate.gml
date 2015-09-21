///scr_ActorDamageFigureCreate(dmgValue)

var dmgValue = argument0;

//dodawnie - i + przed wartoscia zadawanych obrazen
var _dmgValue = '';

if (dmgValue < 0)
    _dmgValue = '+'+string(dmgValue);
else if (dmgValue > 0)
    _dmgValue = '-'+string(dmgValue);

//tworzenie obiektu i nadanie wartosci
var figure = instance_create(x,y-sprite_height,obj_DmgFigure);
figure.value = _dmgValue;
