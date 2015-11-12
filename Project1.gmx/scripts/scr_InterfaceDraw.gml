///scr_InterfaceDraw()
//Wyswietlanie przyciskow tylko na androidzie
if (os_type == os_android)
{
    //STRZAŁKI
    var rightPress = keyboard_check(KEY_RIGHT) + 0;
    var upPress = keyboard_check(KEY_UP) + 2;
    var leftPress = keyboard_check(KEY_LEFT) + 4;
    var downPress = keyboard_check(KEY_DOWN) + 6;
    
    draw_sprite(spr_InterfaceArrows,rightPress,76*2,guiH - (76*2));
    draw_sprite(spr_InterfaceArrows,upPress,76,guiH - (76*3));
    draw_sprite(spr_InterfaceArrows,leftPress,0,guiH - (76*2));
    draw_sprite(spr_InterfaceArrows,downPress,76,guiH - (76)); 
    
    //BUTTONY
    var actionPress = keyboard_check(KEY_ACTION) + 0;
    var cancelPress = keyboard_check(KEY_CANCEL) + 2;
    var atackPress = keyboard_check(KEY_ATTACK) + 4;
    var jumpPress = keyboard_check(KEY_JUMP) + 6;
    
    draw_sprite(spr_InterfaceButtons,actionPress,guiW-(81),guiH - (81*2));
    draw_sprite(spr_InterfaceButtons,cancelPress,guiW-(81*2),guiH - (81*3));
    draw_sprite(spr_InterfaceButtons,atackPress,guiW-(81*3),guiH - (81*2));
    draw_sprite(spr_InterfaceButtons,jumpPress,guiW-(81*2),guiH - (81)); 
}

//SECONDARY BUTTONS
var characterPress = keyboard_check(KEY_CHARACTER) + 0;
var menuPress = keyboard_check(KEY_MENU) + 2;
var swapPress = keyboard_check(KEY_SWAP) + 4;
var brewPress = keyboard_check(KEY_BREW) + 6;
var mixturePress = keyboard_check(KEY_MIXTURE) + 8;

//POBIERANIE ILOSCI BREWS I MIXTURES
var brewCount = obj_Hero.brews;   
var mixtureCount = obj_Hero.mixtures;

//Pusta flacha brew
if (brewCount==0)
    brewPress = 10;
//Pusta flacha mixture
if (mixtureCount==0)
    mixturePress=10;

draw_sprite(spr_InterfaceSecondaryButtons,characterPress,0,0);
draw_sprite(spr_InterfaceSecondaryButtons,menuPress,guiW-81,0);
draw_sprite(spr_InterfaceSecondaryButtons,swapPress,guiW*0.5 - 81 -50,guiH-81);
draw_sprite(spr_InterfaceSecondaryButtons,brewPress,guiW*0.5 - 40,guiH-81);
draw_sprite(spr_InterfaceSecondaryButtons,mixturePress,guiW*0.5 + 50,guiH-81);

//NAPISY PRZEDSTAWIAJACE ILE POSIADAMY BREW I MIXTURE
draw_text_bordered(guiW*0.5 +17,guiH-25,string(brewCount));
draw_text_bordered(guiW*0.5 +90 +17,guiH-25,string(mixtureCount));

//HEALTH, STAMINA i EXP BARY
//super kolor z tylu baru
draw_set_color(make_colour_rgb(89,54,45));
//pomocnicze
var yy = 18;
var hh = 28;
//rysowanie background dla baru
draw_rectangle(92,yy,230,hh,0)
draw_rectangle(92,yy+16,230,hh+16,0)
draw_rectangle(92,yy+32,230,hh+32,0)
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
    draw_rectangle(92,yy,92+xHp,hh,0)
//Stamina bar
draw_set_color(c_yellow);
if (xStamina>0)
    draw_rectangle(92,yy+16,92+xStamina,hh+16,0)
//Expirence bar
draw_set_color(c_white);
if (xEp>0)
    draw_rectangle(92,yy+32,92+xEp,hh+32,0)
    
//rysowanie baru
draw_set_alpha(1);
draw_sprite(spr_InterfaceBar,0,85,16);
draw_sprite(spr_InterfaceBar,0,85,32);
draw_sprite(spr_InterfaceBar,0,85,48);

draw_set_color(c_black);
