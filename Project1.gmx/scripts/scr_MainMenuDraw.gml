///scr_MainMenuDraw()

//wybieranie opcji
if (!chosen)
{
    //super wychamowywacz i rozpedzacz :3
    var belkaGoTo = ((room_height/2)+(menuSelected*43) - yBelka) / smooth;
    
    //przesuniecie belki
    if (abs(belkaGoTo) > 0.1)
        yBelka +=belkaGoTo;
    
    //zatwierdzanie
    if (mouse_check_button_pressed(mb_left) && yBelka > 200)
    {
        var dy = device_mouse_y(0);
        //START
        if (menuSelected = 0) 
        {
            if (dy>240 && dy < 287)
            {
                sound_play(s_menuSelect);
                chosen = true;
                vspd -= jumpStrenght;        //lekki podskok
            }
            else if (dy >287)
                go="DOWN";
        }
        //CONTINUE
        else if (menuSelected = 1) 
        {
            if (dy>288 && dy < 330)
            {
                sound_play(s_menuSelect);
                chosen = true;
                vspd -= jumpStrenght;        //lekki podskok
            }
            else if (dy >330)
                go="DOWN";
            else if (dy <288)
                go="UP";
        }
        //OPTIONS
        else if (menuSelected = 2) 
        {
            if (dy>331 && dy < 373)
            {
                sound_play(s_menuSelect);
                chosen = true;
                vspd -= jumpStrenght;        //lekki podskok
            }
            else if (dy >373)
                go="DOWN";
            else if (dy <331)
                go="UP";                
        }
        //EXIT
        else if (menuSelected = 3) 
        {
            if (dy>374 && dy < 418)
            {
                sound_play(s_menuSelect);
                chosen = true;
                vspd -= jumpStrenght;        //lekki podskok
            }
            else if (dy <374)
                go="UP";                
        }
    }
    
    //wybor gora/dol opcji
    if (go=="UP")
    {
        menuSelected = max(0,menuSelected-1);
        sound_play(s_menuMove);
        go = "";
    }
    else if (go == "DOWN")
    {
        menuSelected = min(3,menuSelected+1);
        sound_play(s_menuMove);
        go = "";
    }
        
}
else //wybrano opcje
{
    stringAlpha-=0.025;         //rozmycie napisu
    vspd++;                     //przyspieszenie opadania belki
    yBelka+=vspd;               //spadanie belki
}

//rysowanie napisu i belki
draw_sprite_ext(spr_MenuBelka,0,0,yBelka,2,2,0,c_white,1);
draw_sprite_ext(spr_MenuNapisy,0,room_width/2,room_height/2,2,2,0,c_white,stringAlpha);

//rozjasnianie/zciemnianie czarnego ekranu
if (yBelka>room_height)
{
    //zaciemnianie ekranu
    alpha = min(1,alpha+0.025);
    
    //przejscie do nastepnego rooma
    if (alpha==1)
    {
        switch(menuSelected)
        {
            case 0: room_goto(room_Init); break;    //new game
            case 1: room_restart(); break;          //continue
            case 2: room_restart(); break;          //opcje
            case 3: game_end(); break;              //exit
        }            
    }
    
}
else
{
    //rozjasnianie
    alpha = max(alpha-0.01,0);
}
//rysowanie tego ciemnego prostokata
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);
