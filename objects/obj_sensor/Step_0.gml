if (place_meeting(x, y, obj_player))
{
	room_goto(destino);
	obj_player.x = posicao_x;
	obj_player.y = posicao_y;
}