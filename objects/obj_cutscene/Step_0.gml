//if (!global.game_started) exit;
with (obj_cutscene) {
	switch(scene)
	{
		case 1:

			var p = instance_find(obj_player, 0);

			if (p != noone) {
				p.sprite_index = spr_playerrightwalk;
			}

			if (p != noone) {
				p.image_speed = 1;
			}

			if (p != noone) {
				p.x += 1;
			}

			if (instance_exists(obj_player)) {
				if (obj_player.x >= 55) {
				{
					obj_player.sprite_index = spr_playerrstop;

					obj_player.image_speed = 0;

					scene = 2;
				}
			}
		break;
			}
		case 2:

			show_dialogue = true;

			dialogue = "Another exhausting day...";

			scene = 3;

		break;

		case 3:

		if (keyboard_check_pressed(vk_space))
		{
			show_dialogue = false;

			scene = 0;
		}

		break;
	}
	global.cutscene_done = true;
}

if (!global.cutscene_done) {

    var p = instance_find(obj_player, 0);

    if (p != noone) {

        if (p.x >= 55) {
            p.x += 1;
            p.sprite_index = spr_playerrightwalk;
            p.image_speed = 1;
        }

    }

    global.cutscene_done = true;
}
