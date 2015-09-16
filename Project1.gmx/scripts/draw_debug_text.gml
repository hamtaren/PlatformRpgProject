///draw_debug_text(x,y,text,color)
var xx = argument0;
var yy = argument1;
var text = argument2;
var color = argument3;

//jezeli jakis inny obiekt chcialby uzywac tego skryptu
if (id != obj_DebugController.id)
{
    debug_log("draw_debug_text moze uzywac tylko debugController",DEBUG_WARN);
    exit;
}
//rysowanie podswitlenia dla lepszej widocznosci logow    
if (textBackground)
    draw_rectangle_colour(xx,yy,xx + 10*string_length(text),yy + string_height(text),c_gray,c_gray,c_gray,c_gray,0);
    
//rysowanie textu
draw_set_font(font_debug);
draw_text_colour(xx,yy,text,color,color,color,color,1);