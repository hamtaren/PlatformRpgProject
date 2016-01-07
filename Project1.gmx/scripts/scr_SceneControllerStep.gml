///scr_SceneControllerStep()

draw_set_alpha(alphaBlack);
draw_set_colour(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_font(f_IntroOutro);
draw_set_halign(fa_middle);
draw_set_alpha(alphaText);
draw_text_ext(room_width*0.5,room_height-80,text,-1,room_width-10);
draw_set_colour(c_white);
draw_text_ext(room_width*0.5-1,room_height-81,text,-1,room_width-10);

if (step == 0)
{
    if (alphaBlack<0)    
    {
        step++;
        text = txt[0];    
    }
    alphaBlack-=0.01;    
}

if (intro)
{
    if (step == 1)
    {
        instance_create(500,300,obj_Scene1Sprite1);       
        step++;
    }
    else if (step == 2)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 3 && step < 4)
    {
        step+=0.01;
    }
    else if (step == 4)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            text = txt[1];
            step++;
            with(obj_Scene1Sprite1)instance_destroy();
            instance_create(400,0,obj_Scene2Sprite1);
        }
    }
    //NOWA SCENA
    else if (step == 5)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 6 && step < 7)
    {
        step+=0.01;
    }
    else if (step == 7)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            text = txt[2];
            step++;
            with(obj_Scene2Sprite1)instance_destroy();
            instance_create(400,240,obj_Scene3Sprite1);
            instance_create(400,240,obj_Scene3Sprite2);
            instance_create(400,240,obj_Scene3Sprite3);
            instance_create(400,240,obj_Scene3Sprite4);                                    
        }
    }
    //NOWA SCENA
    else if (step == 8)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 9 && step < 10)
    {
        step+=0.01;
    }
    else if (step == 10)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            text = txt[3];
            step++;
            with(obj_Scene3Sprite1)instance_destroy();
            with(obj_Scene3Sprite2)instance_destroy();
            with(obj_Scene3Sprite3)instance_destroy();
            with(obj_Scene3Sprite4)instance_destroy();
            instance_create(0,300,obj_Scene4Sprite1);
        }
    }
    //NOWA SCENA
    else if (step == 11)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 12 && step < 13)
    {
        step+=0.01;
    }
    else if (step == 13)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            text = txt[4];
            step++;
            with(obj_Scene4Sprite1)instance_destroy();
            instance_create(400,550,obj_Scene5Sprite1);
        }
    }
    //NOWA SCENA
    else if (step == 14)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 15 && step < 16)
    {
        step+=0.01;
    }
    else if (step == 16)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            step++;
            with(obj_Scene5Sprite1)instance_destroy();
        }
    }
    else if (step == 17)
    {
        if (alphaBlack<1.1)            
            alphaBlack+=0.01; 
        else
            room_goto_next();                        
    }
}
else
{
if (step == 1)
    {
        instance_create(400,240,obj_Scene6Sprite1);       
        step++;
    }
    else if (step == 2)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 3 && step < 4)
    {
        step+=0.01;
    }
    else if (step == 4)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            text = txt[1];
            step++;
            with(obj_Scene6Sprite1)instance_destroy();
            instance_create(400,0,obj_Scene7Sprite1);
        }
    }
    //NOWA SCENA
    else if (step == 5)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 6 && step < 7)
    {
        step+=0.01;
    }
    else if (step == 7)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            text = txt[2];
            step++;
            with(obj_Scene7Sprite1)instance_destroy();
            instance_create(400,240,obj_Scene8Sprite1);                                    
        }
    }
    //NOWA SCENA
    else if (step == 8)
    {
        //Pojawienie tekstu
        if (alphaText<1)
            alphaText+=0.025;
        else
            step++;
    }
    else if (step >= 9 && step < 10)
    {
        step+=0.01;
    }
    else if (step == 10)
    {
        if (alphaText>0)
            alphaText-=0.025;
        else
        {
            step++;
            with(obj_Scene8Sprite1)instance_destroy();
        }
    }
    else if (step == 11)
    {
        if (alphaBlack<1.1)            
            alphaBlack+=0.01; 
        else
            if (!sound_isplaying(m_Outro))                    
            {
                room_goto(room_Menu);
            }
    }
}

if (mouse_check_button(mb_left))
{
    sound_stop_all();
    if (room = room_Intro)
        step = 17;
    else if (room = room_Outro)
        step = 11;
}
