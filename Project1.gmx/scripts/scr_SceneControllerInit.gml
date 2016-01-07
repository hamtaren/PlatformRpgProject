///scr_SceneControllerInit(isIntro)
//false oznacza ze outro
intro = argument0;
step = 0;

alphaBlack = 1;     //alpha czarnego pola
alphaText = 0;      //alpha tekstu

text = "";

//Teksty w intrze
if (intro)
{
    txt[0] = "Crimson - Karmazynowy Potwór powstał z Czeluści by zniszczyć wszystko co żywe";
    txt[1] = "Nie imają się go żadne żywioły ani oręż, prócz tego, który wykuty został z Karmazynowych Minerałów";
    txt[2] = "To pradawny oręż przygotowany na ostateczne starcie, takie jak to z Crimsonem";
    txt[3] = "Niestety, oręż leży w odległych i niebezpiecznych krainach, głęboko wśród starożytnych grobowców";
    txt[4] = "Musisz je odnaleźć i posłać stwora tam skąd przybył. W Tobie jest nasza nadzieja...";
}
//Teksty w outrze
else
{
    txt[0] = "Crimson rozsypał się w czerwony pył, tak samo jak Twój oręż.";
    txt[1] = "Okazało się, że przekucie Karmazynowego Minerału spowodowało powstanie Crimsona";
    txt[2] = "Po powrocie do domu zostałeś ogłoszony bohaterem, a biesiady na Twą cześć zdają się trwać bez końca";
}
