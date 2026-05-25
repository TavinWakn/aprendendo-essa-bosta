if (show_dialogue)
{
    draw_set_alpha(0.4);

    draw_set_color(c_black);

    draw_rectangle(0,0,1280,720,false);

    draw_set_alpha(1);

    draw_sprite_ext(
        spr_player_portrait,
        0,
        -15,
        5,
        1,
        1,
        0,
        c_white,
        1
    );

    draw_set_color(c_black);

    draw_roundrect(
        420,
        470,
        1220,
        690,
        false
    );

    draw_set_color(c_white);

    draw_roundrect(
        420,
        470,
        1220,
        690,
        true
    );

    draw_set_color(c_red);

    draw_text(
        520,
        500,
        "PLAYER"
    );

    draw_set_color(c_white);

    draw_text(
        520,
        560,
        dialogue
    );
}