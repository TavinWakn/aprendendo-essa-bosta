function game_save() {

    var p = instance_find(obj_player, 0);

    if (p != noone) {

        ini_open("save.sav");

        ini_write_real("player", "x", p.x);
        ini_write_real("player", "y", p.y);

        ini_write_string("game", "room", room_get_name(room));
        ini_write_real("game", "cutscene_done", global.cutscene_done ? 1 : 0);

        ini_close();
    }
}