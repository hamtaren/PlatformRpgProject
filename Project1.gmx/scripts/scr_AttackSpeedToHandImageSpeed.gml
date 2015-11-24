///scr_AttackSpeedToHandImageSpeed(attackSpeedVariable,image_number)
//Obliczanie szybkosci machania reką w zaleznosci od szybkosci ataku (ile ma wynosic image_speed tak jakby)

var aSpeed = argument0;
var imgNumber = argument1;

return imgNumber / scr_AttackSpeedToFrames(aSpeed);
