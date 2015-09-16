///scr_IdDetailobj_Hero()

scr_IdDetailVarsMapCreate("hspd",ref.hspd);
mask_index = spr_HeroMask;
scr_IdDetailVarsMapCreate("warunek",(place_meeting_diagonal(ref.x+ref.hspd+ref.moveAcc, ref.y+8)));
mask_index = noone;