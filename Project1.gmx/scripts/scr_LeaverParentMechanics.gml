///scr_LeaverParentMechanics()

//Animacja i mechanizm przeciagania dzwigni
if (!turned)
{    
    var side =1; //strona w ktora bedzie przeciagana dzwignia i odgrywana animacja
    if (!turnOn) 
    {
        //gdy animacja dojdzie do poczatku od konca
        if (round(image_index) == 0)
        {
            image_index = 0;
            turned = true;
        }
        else
            side = -1;
    }
    else
    {
        //gdy animacja dojdzie do konca od poczatku
        if (round(image_index) == image_number -1)
        {
            image_index = image_number -1;
            turned = true;           
        }
        else
            side = 1;
    }
    
    //animacja odgrywana w strone zalezna od strony w ktora zmierza dzwignia
    image_speed=0.3*side;
}
else
    image_speed=0;

//TRIGGEROWANIE
if (trigger)
{
    trigger = false;
    
    with(obj_Trigger)
    {
        if (id.trigId == other.trigId)
        {
            trigger = true;
        }
    }
}    

