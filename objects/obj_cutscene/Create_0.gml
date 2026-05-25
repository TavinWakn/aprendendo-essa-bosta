show_dialogue = false;

if (!variable_global_exists("cutscene_done")) {
    global.cutscene_done = false;
}

if (!global.cutscene_done) {
    global.cutscene_done = true;
}
if (!variable_global_exists("cutscene_done")) global.cutscene_done = false;
if (!variable_global_exists("load_game")) global.load_game = false;

scene = 1;