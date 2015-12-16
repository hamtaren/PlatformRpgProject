///scr_ItemArmorGenerate(DEPRECATED@value,item)  
//                                         
//0-9      -szaty
//10-19    -plaszcz
//20-29    -kurtka
//30-39    -przeszywanica
//40-49    -zbroja skorzana
//50-59    -kolczuga
//60-69    -zbroja plytkowa
//70-79    -zbroja luskowa
//80-89    -stalowy napiersnik
//90-99    -zbroja plytowa
//100      -karmazynowy pancerz
//110      -karmazynowa zbroja

//rest 0 - zadna zmiana, 9 - epic!, 1 - lueee ;/

var value = argument0; //zmienna okreslajaca "wartosc" generowanego armora
var item = argument1;  //armor

//okreslenie ktory przedmiot bedzie wygenerowany
var _sprIndex = value div 10;

//nadanie mu nazwy
var _name = scr_ItemArmorNames(_sprIndex);

//reszta do rozdysponowania na dodatkowe ulepszenia
var rest = value mod 10;

//zadeklarowanie wszystkich zmiennych
var _pierce,_slash,_blunt,_fire,_cold,_electro,_weight,_hpReg,_stamReg,_hpMax,_stamMax;

//zainicjowanie w zalzeznosci od broni
switch(_sprIndex)
{
    case 0: _pierce = 0;_slash = 0; _blunt = 0; _fire = -0.1; _cold = 0.05; _electro = 0; _weight=0; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 1: _pierce = 0; _slash = 0; _blunt = 0; _fire = 0; _cold = 0; _electro = 0; _weight=1; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 2: _pierce = 0; _slash = 0.05; _blunt = 0; _fire = -0.05; _cold = 0.10; _electro = 0.05; _weight=2; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 3: _pierce = 0; _slash = 0.05; _blunt = 0.1; _fire = 0; _cold = 0.15; _electro = 0.05; _weight=3; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 4:_pierce = 0.05; _slash = 0.05; _blunt = 0.05;_fire = 0; _cold = 0.1; _electro = 0.05; _weight=4; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 5: _pierce = 0.05; _slash = 0.15; _blunt = 0; _fire = 0; _cold = 0; _electro = 0; _weight=5; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 6: _pierce = 0.1; _slash = 0.1; _blunt = 0.1; _fire = 0; _cold = 0; _electro = 0.05;_weight=6; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 7: _pierce = 0.15; _slash = 0.15; _blunt = 0.1; _fire = 0.05; _cold = 0; _electro = 0.05; _weight=10; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 8: _pierce = 0.15;_slash = 0.20; _blunt = 0.15; _fire = 0.05; _cold = 0.05; _electro = 0.05; _weight=10; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 9: _pierce = 0.25; _slash = 0.25; _blunt = 0.25; _fire = 0.1; _cold = 0.1; _electro = 0.1; _weight=15; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 10: _pierce = 0.5; _slash = 0.5; _blunt = 0.5; _fire = 0.5; _cold = 0.5; _electro = 0.5; _weight=10; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;
    case 11: _pierce = 0.75; _slash = 0.75; _blunt = 0.75; _fire = 0.75; _cold = 0.75; _electro = 0.75; _weight=15; _hpReg=0; _stamReg=0; _hpMax=0; _stamMax=0; break;    
}

if (rest!=0)
{
    _pierce += rest*choose(0.01, 0.02, 0.03, 0.04, 0.05, 0.75, 0.1)*choose(-1,1,0,0,0);
    _slash += rest*choose(0.01, 0.02, 0.03, 0.04, 0.05, 0.75, 0.1)*choose(-1,1,0,0,0);
    _blunt += rest*choose(0.01, 0.02, 0.03, 0.04, 0.05, 0.75, 0.1)*choose(-1,1,0,0,0);
    _fire += rest*choose(0.01, 0.02, 0.03, 0.04, 0.05, 0.75, 0.1)*choose(-1,1,0,0,0);
    _cold += rest*choose(0.01, 0.02, 0.03, 0.04, 0.05, 0.75, 0.1)*choose(-1,1,0,0,0);
    _electro += rest*choose(0.01, 0.02, 0.03, 0.04, 0.05, 0.75, 0.1)*choose(-1,1,0,0,0)
    _weight += rest*choose(1,2,3,4,5)*choose(-1,1,0,0,0);
    _hpReg += rest*choose(1,2,3,4,5)*choose(-1,1,0,0,0) * 0.001; 
    _stamReg += rest*choose(1,2,3,4,5)*choose(-1,1,0,0,0) * 0.01; 
    _hpMax += rest*choose(5,6,7,8,9,10)*choose(-1,1,0,0,0)*0.5;
    _stamMax += rest*choose(5,6,7,8,9,10)*choose(-1,1,0,0,0);  
}

_weight = clamp(_weight, -2, 50);

//ustawienie wszystkich wartosci
scr_ItemArmorSet(item,_name,_pierce,_slash,_blunt,_fire,_cold,_electro,_weight,_hpReg,_stamReg,_hpMax,_stamMax,_sprIndex);
