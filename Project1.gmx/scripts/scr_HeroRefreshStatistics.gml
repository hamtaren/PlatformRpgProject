///scr_HeroRefreshStatistics()
//Aktualizowanie statystyk na podstawie posiadanych broni, dobytego doswiadczenia itp

//Zdobywanie nastepnego poziomu
if (ep >= epMax)
{
    if (level<50) 
    {
        sp+=5;
        level++;
        ep -=epMax;
        epMax *=2;
    }
    else
    {
        ep = epMax;
    }
}
