///scr_IdDetailDraw()
if (instance_exists(ref))
{
    if (show)
    {
    draw_set_alpha(0.5);
    draw_set_color(c_gray);
    
    //spis wszystkich obiektow ktorym bedziemy dodawac dodatkowe zmienne do wyswietlania
    scr_IdDetailVarsList(); //pobieranie wartosci zmiennych ze wskazywanego obiektu
    
    /*rysowanie tla
    *   (_ * 16) - ilosc tekstow prze listą
    *   (ds_list_size(varsList)*16) - lista z dodatkowymi zmiennymi */
    draw_rectangle(x-3,y-3,
        x+ string_length( 'Id: '+string(ref.id) )*15,
        y+3 + (3 * 16) + (ds_list_size(varsList)*16) + sprite_get_height(ref.sprite_index), 0 );
    
    draw_set_color(c_white);
    draw_set_font(font_debug);
    
    var h = 0; //height ktory liczy linijki
    
    //jakies podstawowe info dla kazdego obiektu
    
    draw_text(x,y+(h*16),object_get_name(ref.object_index)); h++;
    draw_text(x,y+(h*16),'Id: '+string(ref.id)); h++;
    draw_text(x,y+(h*16),'IdDetail: '+string(id)); h++;
    
    //rysowanie dodatkowych tekstow
    for (var i=0; i<ds_list_size(varsList); i++)
    {
        //odbieranie mapy z listy zakodowanej jako json
        var varsMap = json_decode(ds_list_find_value(varsList,i));
        var name = varsMap[? "Name"];   //nazwa zmiennej
        var value = varsMap[? "Value"]; //wartosc zmiennej

        //rysowanie
        draw_text(x,y+(h*16), name + ": " + string(value) ); h++;
    }
    //offsety obrazka, zeby byl dobrze wyswietlany
    var xx = sprite_get_xoffset(ref.sprite_index);
    var yy = sprite_get_yoffset(ref.sprite_index);
    
    //rysowanie obrazka wskazanego obiektu
    draw_sprite(ref.sprite_index,0,x + xx,y+(h*16)+yy);
    draw_set_alpha(1);
    }
}
else
{
    instance_destroy();
    debug_log("Zniszczono obiekt obserwowany, wiec zniszono obiekt obserwujacy",DEBUG_WARN);
}