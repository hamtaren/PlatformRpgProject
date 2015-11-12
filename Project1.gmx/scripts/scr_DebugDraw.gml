///scr_DebugDraw()
//rysowanie wszystkich informacji debugowych
if (debug)
{
    var vx,vy;
    vx = view_xview[0];
    vy = view_yview[0];
    
    //ładny prompt :)
    var commandText ="";    
    if (command)    
        commandText = ": " + prompt;    
    
    //Napis na samej gorze ze jest wloczony debug mode
    draw_debug_text(vx+4,vy+4,'DEBUG MODE' + commandText,c_red);
    
    //Lista logow
    scr_DebugLogsDraw(vx,vy);
}
