if (!opened)
{
    opened = true;

    sprite_index = spr_cardboard_box;

    instance_create_layer(
        x + 30,
        y + 18,
        layer,
        obj_camera
    );
}