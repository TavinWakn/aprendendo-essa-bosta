up = noone;
down = noone;
left = noone;
right = noone;

velx = 0;
vely = 0;
vel = 1;
dir = 0;

estado_idle = new estado()
estado_walk = new estado()
inicia_estado(estado_idle)

var _sprite = spr_player_fstop

#region estado_idle
	sprite_index = _sprite;
estado_idle.inicia = function()
{
		var _sprite = spr_player_fstop;
	switch(dir)
	{
		case 0: sprite_index = spr_player_fstop; break;
		case 1: sprite_index = spr_player_lstop; break;
		case 2: sprite_index = spr_player_bstop; break;
		case 3: sprite_index = spr_player_rstop; break;
	}
}
estado_idle.roda = function()
{
	if(velx !=0 or vely != 0)
	{
		troca_estado(estado_walk)
	}
	if(up or down or left or right)
	{
		troca_estado(estado_walk)
	}
}



#endregion  

#region estado_walk
	estado_walk.inicia = function()
	{
		var _sprite;
		 
		sprite_index = spr_playerfrontwalk
	}
	estado_walk.roda= function()
	{
		
		velx = (right - left)*vel
		vely = (down - up)*vel
		
				var _sprite = spr_player_fstop;
	switch(dir)
	{
		case 0: sprite_index = spr_playerfrontwalk; break;
		case 1: sprite_index = spr_playerleftwalk; break;
		case 2: sprite_index = spr_playerbackwalk; break;
		case 3: sprite_index = spr_playerrightwalk; break;
	}
		
		if(vely == 0 && velx == 0)
		{
			troca_estado(estado_idle)
		}
	}
	

#endregion

#region direçao



#endregion






inventory_camera = false;
