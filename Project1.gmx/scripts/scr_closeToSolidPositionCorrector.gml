///scr_closeToSolidPositionCorrector(speedType,x,y)

/*  Skrypt sprawia ze przy ladowaniu nie ma efektu zatrzymania na moment i dopiero ladowania
**  tak samo z uderzaniem w sufit, niweluje to zatrzymanie przed sufitem
**  Rowniez zatrzymuje bohatera dotykajacego sciany a nie ciut przed nią
*/

var speedType = argument0;
var speedSign = sign(speedType);
var xx = argument1;
var yy = argument2;


for (var i = 0; i < speedSign*speedType; i++)
    if (!place_meeting(xx,yy + speedType + 1 + (1-speedSign)* i, obj_Solid))
    {
        return speedType + 1 + (1-speedSign)*i;
    }
//return 0;