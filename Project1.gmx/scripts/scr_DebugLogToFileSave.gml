///scr_DebugLogToFileSave(text)
//zapisywanie do pliku w okreslonym miejscu wykorzystujac zewnetrzna biblioteke
var iFileSave = external_define("debugLibrary.dll", "FileSave", dll_cdecl, ty_real, 1, ty_string);
var result = external_call(iFileSave,argument0);

if (result)
    debug_log("ZAPISANO",DEBUG_SUCCESS);
else
    debug_log("BŁĄD",DEBUG_ERROR);