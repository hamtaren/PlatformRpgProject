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
    if (keyboard_check_pressed(vk_enter) && yBelka > 200)
    {    
        chosen = true;
        vspd -= jumpStrenght;        //lekki podskok
    }
    
    //wybor gora/dol opcji
    if (keyboard_check_pressed(vk_up))
        menuSelected = max(0,menuSelected-1);
    else if (keyboard_check_pressed(vk_down))
        menuSelected = min(3,menuSelected+1);
        
}
else //wybrano opcje
{
    stringAlpha-=0.025;         //rozmycie napisu
    vspd++;                     //przyspieszenie opadania belki
    yBelka+=vspd;
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
