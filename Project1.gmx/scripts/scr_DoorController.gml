///scr_DoorController()
isSolid = !opened;   //wylaczenie i wlaczenie przenikalnosci drzwi,

image_xscale = side; //obracanie obrazka zaleznie od side (zeby dzwi mogly sie otwierac w rozne strony)

//TODO: jezeli sa bashowane to bez animacji, moze tworzenie jakiegos particla i obiektu przedstawiajacego rozjebane drzwi
///Animacja i mechanizm przeciagania dzwigni
if (opening)
{    
    var openSide =1; //strona w ktora bedzie przeciagana dzwignia i odgrywana animacja
    if (!opened) 
    {
        //gdy animacja dojdzie do poczatku od konca
        if (round(image_index) == 0)
        {
            image_index = 0;
            opening = false;
        }
        else
            openSide = -1;
    }
    else
    {
        //gdy animacja dojdzie do konca od poczatku
        if (round(image_index) == image_number -1)
        {
            image_index = image_number -1;
            opening = false;           
        }
        else
            openSide = 1;
    }
    
    //animacja odgrywana w strone zalezna od strony w ktora zmierza dzwignia
    image_speed=0.3*openSide;
}
else
    image_speed=0;