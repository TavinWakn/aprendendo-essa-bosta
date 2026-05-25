if (y > target_y)
{
    y -= 1;
}

if (image_alpha < 1)
{
    image_alpha += 0.05;
}

if (y > target_y)
{
    y -= 1;
}

if (y > target_y)
{
    y -= 1;
}

if (distance_to_object(obj_player) < 20)
{
    if (keyboard_check_pressed(ord("E")))
    {
        obj_player.inventory_camera = true;

        instance_destroy();
    }
}