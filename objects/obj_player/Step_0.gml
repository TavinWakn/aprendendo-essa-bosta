// RESETAR VELOCIDADE
spdx = 0;
spdy = 0;


// INPUT
if (
    (!instance_exists(obj_cutscene) || obj_cutscene.scene == 0)
)
{
	if (keyboard_check(ord("D")))
	{
		spdx = spd;
	}

	if (keyboard_check(ord("A")))
	{
		spdx = -spd;
	}

	if (keyboard_check(ord("S")))
	{
		spdy = spd;
	}

	if (keyboard_check(ord("W")))
	{
		spdy = -spd;
	}

	repeat(abs(spdx))
{
		if (!place_meeting(x + sign(spdx), y, obj_wall))
		{
			x += sign(spdx);
		}
		else
		{
			break;
		}
	}
// MOVIMENTO VERTICAL
	repeat(abs(spdy))
	{
		if (!place_meeting(x, y + sign(spdy), obj_wall))
	{
		y += sign(spdy);
	}
		else
		{
			break;
		}
	}

// SPRITES MOVENDO
	if (spdx > 0)
	{
		sprite_index = spr_playerrightwalk;
		facing = "right";
	}

	if (spdx < 0)
	{
		sprite_index = spr_playerleftwalk;
		facing = "left";
	}

	if (spdy > 0)
	{
		sprite_index = spr_playerfrontwalk;
		facing = "down";
	}

	if (spdy < 0)
	{
		sprite_index = spr_playerbackwalk;
		facing = "up";
	}



// SPRITES PARADO
	if (spdx == 0 && spdy == 0)
	{
		if (facing == "down")
		{
			sprite_index = spr_player_fstop;
		}

		if (facing == "up")
		{
			sprite_index = spr_playerbstop;
		}

		if (facing == "left")
		{
			sprite_index = spr_playerlstop;
		}

		if (facing == "right")
		{
			sprite_index = spr_playerrstop;
		}
	}
}

if (teleport_timer > 0)
{
	teleport_timer--;	
}

var nearest = instance_nearest(x, y, par_interact);

if (nearest != noone)
{
    var dist = point_distance(x, y, nearest.x, nearest.y);

    if (dist <= nearest.interaction_distance)
    {
        if (keyboard_check_pressed(ord("E")))
        {
            with (nearest)
            {
                event_user(0);
            }
        }
    }
}