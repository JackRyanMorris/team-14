show_debug_message("Panel clicked at: " + string(mouse_x) + "," + string(mouse_y));

// Set global selected object based on where you clicked
if (point_in_rectangle(mouse_x, mouse_y, 640, 100, 710, 170)) {
    global.selected_piece = obj_piece_bl;
}
else if (point_in_rectangle(mouse_x, mouse_y, 640, 200, 710, 270)) {
    global.selected_piece = obj_piece_br;
}
else if (point_in_rectangle(mouse_x, mouse_y, 640, 300, 710, 370)) {
    global.selected_piece = obj_piece_lt;
}
else if (point_in_rectangle(mouse_x, mouse_y, 640, 400, 710, 470)) {
    global.selected_piece = obj_piece_rt;
}

