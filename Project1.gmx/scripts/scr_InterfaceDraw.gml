///scr_InterfaceDraw()
var _eq = obj_Hero.objEq;
if (characterPage == PAGE_NONE) //NIE WYSWIETLA KARTY POSTACI
{    
    //Wyswietlanie przyciskow tylko na androidzie
    if (os_type == os_android && !obj_Hero.dead)
    {            
        //STRZAŁKI
        var rightPress = keyboard_check(KEY_RIGHT) + 0;
        var upPress = keyboard_check(KEY_UP) + 2;
        var leftPress = keyboard_check(KEY_LEFT) + 4;
        var downPress = keyboard_check(KEY_DOWN) + 6;
        
        draw_sprite(spr_InterfaceArrows,rightPress,38*2,guiH - (38*2));
        draw_sprite(spr_InterfaceArrows,upPress,38,guiH - (38*3));
        draw_sprite(spr_InterfaceArrows,leftPress,0,guiH - (38*2));
        draw_sprite(spr_InterfaceArrows,downPress,38,guiH - (38)); 
        
        //BUTTONY
        var actionPress = keyboard_check(KEY_ACTION) + 0;
        var cancelPress = keyboard_check(KEY_CANCEL) + 2;
        var atackPress = keyboard_check(KEY_ATTACK) + 4;
        var jumpPress = keyboard_check(KEY_JUMP) + 6;
        
        //RYSOWANIE PRZYCISKOW
        draw_sprite(spr_InterfaceButtons,actionPress,guiW-(40),guiH - (40*2));
        draw_sprite(spr_InterfaceButtons,cancelPress,guiW-(40*2),guiH - (40*3));
        draw_sprite(spr_InterfaceButtons,atackPress,guiW-(40*3),guiH - (40*2));
        draw_sprite(spr_InterfaceButtons,jumpPress,guiW-(40*2),guiH - (40)); 
    }    
    
    if (!obj_Hero.dead)
    {
        //SECONDARY BUTTONS    
        var swapPos = _eq.weaponType;
        
        var menuPress = keyboard_check(KEY_MENU) + 2;
        var swapPress = keyboard_check(KEY_SWAP) + 4 + 7*swapPos;
        var brewPress = keyboard_check(KEY_BREW) + 6;
        var mixturePress = keyboard_check(KEY_MIXTURE) + 8;
        
        //POBIERANIE ILOSCI BREWS I MIXTURES
        var brewCount = _eq.brews;   
        var mixtureCount = _eq.mixtures;
        
        //Pusta flacha brew
        if (brewCount==0)
            brewPress = 10;
        //Pusta flacha mixture
        if (mixtureCount==0)
            mixturePress=10;        
    
        //RYSWOWANIE PRZYCISKOW
        draw_sprite(spr_InterfaceSecondaryButtons,menuPress,guiW-40,0);
        draw_sprite(spr_InterfaceSecondaryButtons,swapPress,guiW*0.5 - 40 -25,guiH-40);
        draw_sprite(spr_InterfaceSecondaryButtons,brewPress,guiW*0.5 - 20,guiH-40);
        draw_sprite(spr_InterfaceSecondaryButtons,mixturePress,guiW*0.5 + 25,guiH-40);    
        
        //KLUCZE
        for (var i = 0; i<3; i++)
        {
            if (_eq.key[i])
                draw_sprite_ext(spr_Keys,i,48,64+i*32,2,2,0,c_white,1);
        }
        
        //NAPISY PRZEDSTAWIAJACE ILE POSIADAMY AMUNICJI, BREW I MIXTURE
        draw_set_font(font_debug);
        draw_set_halign(fa_center);
        if (_eq.weaponType == WPN_DIST)
            draw_text_bordered(guiW*0.5 - 40 - 25, guiH-13,string(_eq.ammo) + " | " + string(_eq.arrows));
        draw_text_bordered(guiW*0.5 +10,guiH-15,string(brewCount));
        draw_text_bordered(guiW*0.5 +45 +10,guiH-15,string(mixtureCount));
    }
    
    //MINI MENU
    if (menu)
    {
        if (obj_Hero.dead)
        {
            //draw_rectangle_color(0,0,800,480,c_black,c_black,c_black,c_black,0);
            draw_sprite(spr_IntroOutro,0,0,0);
            draw_sprite(spr_SceneSpriteCrimsonHead,0,200,140);
            draw_sprite(spr_GameOver,0,0,0);
        }
        draw_sprite(spr_miniMenu,0,200,120);
        
    }
}
else
{
    //GLOWNY BACKGROUND DLA KARTY POSTACI
    draw_sprite(spr_characterPageMain,0,0,0);
    
    //WARTOSCI ZYCIA, STAMINY I EXPA
    draw_set_halign(fa_center);
    draw_set_font(font_debug);
    draw_text_bordered(268,2,string(round((obj_Hero.hp))) + "/" + string(round(obj_Hero.hpMax))  );
    draw_text_bordered(268,18,string(round((obj_Hero.stamina))) + "/" + string(round(obj_Hero.staminaMax)) );
    draw_text_bordered(268,34,string(round((obj_Hero.ep))) + " / " + string(obj_Hero.epMax) );
    
    //POZIOM
    draw_set_halign(fa_left);
    draw_text_bordered(328,2,"Poziom " + string(obj_Hero.level));
    
    //PUNKTY UMIEJETNOSCI
    if (obj_Hero.sp>0)
    {
        draw_text_bordered(330,22,"Pkty um.");
        draw_set_halign(fa_center);
        draw_text_bordered(365,38,string(obj_Hero.sp));
    }
    
    //RYSOWANIE ODPOWIEDNIEJ PODSTRONY
    switch(characterPage)
    {
        case PAGE_ATRYB: //ATRYBUTY
        {
            draw_sprite(spr_characterPages,0,0,guiH); 
            
            draw_set_font(font_debug);
            draw_set_halign(fa_center);
            
            draw_text_bordered(208,90,obj_Hero.strength);
            draw_text_bordered(208,118,obj_Hero.dextarity);
            draw_text_bordered(208,146,obj_Hero.endurance);
            draw_text_bordered(208,174,obj_Hero.energy);
            draw_text_bordered(208,202,obj_Hero.vitality);
            
            break;
        }
        case PAGE_STAT: //STATYSTYKI
        {
            draw_sprite(spr_characterPages,1,0,guiH); 
            
            draw_set_font(font_debug);
            draw_set_halign(fa_center);
            
            //OBRAZENIA
            draw_text_bordered(188,92,obj_Hero.dmgObject.pierce);
            draw_text_bordered(188,114,obj_Hero.dmgObject.slash);
            draw_text_bordered(188,136,obj_Hero.dmgObject.blunt);
            draw_text_bordered(188,158,obj_Hero.dmgObject.fire);
            draw_text_bordered(188,180,obj_Hero.dmgObject.cold);
            draw_text_bordered(188,202,obj_Hero.dmgObject.electro);
            draw_text_bordered(188,224,obj_Hero.dmgObject.dmgTrue);
            
            //ODPORNOSCI
            draw_text_bordered(264,92,scr_InterfaceResPercent(obj_Hero.resObject.pierce));
            draw_text_bordered(264,114,scr_InterfaceResPercent(obj_Hero.resObject.slash));
            draw_text_bordered(264,136,scr_InterfaceResPercent(obj_Hero.resObject.blunt));
            draw_text_bordered(264,158,scr_InterfaceResPercent(obj_Hero.resObject.fire));
            draw_text_bordered(264,180,scr_InterfaceResPercent(obj_Hero.resObject.cold));
            draw_text_bordered(264,202,scr_InterfaceResPercent(obj_Hero.resObject.electro));
            
            break;
        }
        case PAGE_EKWIP: //EKWIPUNEK
        {
            draw_sprite(spr_characterPages,2,0,guiH); 
            
            draw_set_font(font_debug);
            draw_set_halign(fa_center);
            
            //DPS
            draw_text_bordered(264,90,obj_Hero.dps);
            //AMUNICJA
            draw_text_bordered(264,134,_eq.ammo);
            //STRZALY            
            draw_text_bordered(264,158,_eq.arrows);
            //OBRONA FIZYCZNA
            draw_text_bordered(264,192,obj_Hero.resPhy);
            //OBRONA ZYWIOLOW
            draw_text_bordered(264,216,obj_Hero.resElem);
            
            //RAMKI (ZAZNACZENIA) WYBRANYCH PRZEDMIOTOW
            draw_set_color(c_white) 
            draw_rectangle(3 + (56*_eq.mSel),65,55 + (56*_eq.mSel),117,1);
            draw_rectangle(3 + (56*_eq.dSel),123,55 + (56*_eq.dSel),175,1);
            draw_rectangle(3 + (56*_eq.aSel),181,55 + (56*_eq.aSel),233,1);                        
            
            //PRZEDMIOTY
                        
            //MELEE
            if (instance_exists(_eq.melee[0]))
                draw_sprite_ext(_eq.melee[0].sprEq, _eq.melee[0].sprIndex, 6,68,2,2,0,c_white,1);                
            if (instance_exists(_eq.melee[1]))
                draw_sprite_ext(_eq.melee[1].sprEq, _eq.melee[1].sprIndex, 62,68,2,2,0,c_white,1);                
            if (instance_exists(_eq.melee[2]))
                draw_sprite_ext(_eq.melee[2].sprEq, _eq.melee[2].sprIndex, 118,68,2,2,0,c_white,1);                
            
            //DISTANCE
            if (instance_exists(_eq.distance[0]))
                draw_sprite_ext(_eq.distance[0].sprEq, _eq.distance[0].sprIndex, 6,126,2,2,0,c_white,1);                
            if (instance_exists(_eq.distance[1]))
                draw_sprite_ext(_eq.distance[1].sprEq, _eq.distance[1].sprIndex, 62,126,2,2,0,c_white,1);
            
            //ARMOR
            if (instance_exists(_eq.armor[0]))
                draw_sprite_ext(_eq.armor[0].sprEq, _eq.armor[0].sprIndex, 6,184,2,2,0,c_white,1);                
            if (instance_exists(_eq.armor[1]))
                draw_sprite_ext(_eq.armor[1].sprEq, _eq.armor[1].sprIndex, 62,184,2,2,0,c_white,1);
            
            break;
        }
    }   
}

if (!obj_Hero.dead)
{
    //PRZYCISK KARTY POSTACI
    var characterPress = keyboard_check(KEY_CHARACTER) + 0;
    draw_sprite(spr_InterfaceSecondaryButtons,characterPress,0,0);            
    
    //HEALTH, STAMINA i EXP BARY
    //super kolor z tylu baru
    draw_set_color(make_colour_rgb(89,54,45));
    //pomocnicze
    var yy = 2;
    var hh = 12;
    //rysowanie background dla baru
    draw_rectangle(52,yy,190,hh,0)
    draw_rectangle(52,yy+16,190,hh+16,0)
    draw_rectangle(52,yy+32,190,hh+32,0)
    //rysowanie wypelnienia dla baru
    var xHp, xStamina, xEp; //Dlugosci wypelnien
    var len = 138; //Dlugosc calego wypelniacza
    
    //obliczanie dlugosci poszczegolnych wypelnien
    xHp = (obj_Hero.hp / obj_Hero.hpMax)*len;
    xStamina = (obj_Hero.stamina / obj_Hero.staminaMax)*len;
    xEp = (obj_Hero.ep / obj_Hero.epMax)*len;
    
    draw_set_alpha(0.75);
    //Health bar
    draw_set_color(c_red);
    if (xHp>0)
        draw_rectangle(52,yy,52+xHp,hh,0)
    //Stamina bar
    draw_set_color(c_yellow);
    if (xStamina>0)
        draw_rectangle(52,yy+16,52+xStamina,hh+16,0)
    //Expirence bar
    draw_set_color(c_white);
    if (xEp>0)
        draw_rectangle(52,yy+32,52+xEp,hh+32,0)
        
    //rysowanie baru
    draw_set_alpha(1);
    draw_sprite(spr_InterfaceBar,0,45,0);
    draw_sprite(spr_InterfaceBar,0,45,16);
    draw_sprite(spr_InterfaceBar,0,45,32);
    
    draw_set_color(c_black);
    
    
    //Boss
    if (characterPage == PAGE_NONE)
    {
        if (instance_exists(obj_Boss))
        {
            if (obj_Boss.encounter)
            {        
                var index = 1;
                if (instance_exists(obj_Troll))
                    index = 0;
                    
                var xxx = 202;
                draw_sprite(spr_HpBars,index,xxx,0);
                
                var len = 132;
                var xHp = (obj_Boss.hp / obj_Boss.hpMax)*len;
                
                draw_rectangle_colour(xxx+10,36,xxx+10 + xHp, 41,c_red,c_red,c_red,c_red,0);
            }    
        }
    }
}

