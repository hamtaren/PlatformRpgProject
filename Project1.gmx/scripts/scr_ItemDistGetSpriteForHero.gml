///scr_ItemDistGetSpriteForHero(wpn,isReloading)
//zwraca id sprite w zaleznosci od tego jaka bron nosimy i czy przeladowujemy
var wpn = argument0;
var rel = argument1;

//Tablica spritow
var sprites;

//GUNS
sprites[0,0] = spr_HeroAttackGunTwoHand1;
sprites[0,1] = spr_HeroReloadGunTwoHand1;
sprites[1,0] = spr_HeroAttackGunTwoHand2;
sprites[1,1] = spr_HeroReloadGunTwoHand2;
sprites[2,0] = spr_HeroAttackGunTwoHand3;
sprites[2,1] = spr_HeroReloadGunTwoHand3;
sprites[3,0] = spr_HeroAttackGunTwoHand4;
sprites[3,1] = spr_HeroReloadGunTwoHand4;
//BOWS
sprites[4,0] = spr_HeroAttackBowTwoHand1;
sprites[4,1] = spr_HeroReloadBowTwoHand1;
sprites[5,0] = spr_HeroAttackBowTwoHand2;
sprites[5,1] = spr_HeroReloadBowTwoHand2;
sprites[6,0] = spr_HeroAttackBowTwoHand3;
sprites[6,1] = spr_HeroReloadBowTwoHand3;
sprites[7,0] = spr_HeroAttackBowTwoHand4;
sprites[7,1] = spr_HeroReloadBowTwoHand4;

//Wybieranie ktorego sprita ma pokazac
var spr = 0;
if (wpn.sprite_index == spr_FloorItemsBow)
    spr+=4;
spr+= wpn.sprIndex-2;
    
return sprites[spr,rel];

