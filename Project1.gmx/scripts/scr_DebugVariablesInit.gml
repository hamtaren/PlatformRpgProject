///scr_DebugVariablesInit()

//Obiekt jest persistent i tworzony jest w room_Init
//TODO: jak juz bedzie drzewko talenow, to trzeba bedzie w debugerContollerze zrobic odpowiedni sposob na wlaczanie i wylaczanie umiejetnosci

//kontrolki techniczne
debug = true;           //czy debugowac
command = false;        //czy jest w trybie komend
textBackground = false; //czy za tekstem ma byc zamalowane, zeby bylo go lepiej widac

//kontrolki gameplayu
godMode = false         //god mode on/off
camTarget = noone;      //zmienna przechowujaca target kamery sprzed wprowadzenia komendy "cam"

//komendy
prompt = "";                                     //prompt polecen
availableCommands = scr_DebugCommandsAvailable() //lista dostepnych polecen
lastCommands = ds_list_create();                 //list wykonanych polecen;
commandSelected = 0;                             //wyswietlana komenda z listy ostatnich polecen

//logi
log = ds_list_create(); //lista logow z debuga przechowuje mapy o kluczach: string log,DEBUG_TYPE type
logPos = 0;             //przesuniecie wyswietlanych logow
logShowLen = LOG_SMALL; //ile logow pokazywac //tiny = 3; small = 10; med = 20; full = 46;

//klawisze
key_Mode = vk_f8;               //wlaczenie debuga
key_Commands = vk_f12;          //wlaczenie komend
key_Background = vk_f7;         //wlaczenie podswietlenia pod tekstem loga
key_ClearLog = vk_f9;           //wyczyszczenie loga
key_ChangeLogShowLen = vk_f6    //zmiana dlugosci loga

keysHelp = "F9 - czysci log| F6 - zmienia dlugosc| F7 - podswietlenie";
