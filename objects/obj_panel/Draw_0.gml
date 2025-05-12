draw_set_color(c_ltgray);
draw_rectangle(600, 0, 800, 600, false); // Panel area

// Draw buttons for piece types
draw_sprite(spr_piece_bl, 0, 640, 100);
draw_sprite(spr_piece_br, 0, 640, 200);
draw_sprite(spr_piece_lt, 0, 640, 300);
draw_sprite(spr_piece_rt, 0, 640, 400);

if (global.selected_piece == obj_piece_bl) {
	draw_set_alpha(0.3);           // Set transparency (0 = invisible, 1 = solid)
    draw_set_color(c_lime);
    draw_rectangle(640, 100, 704, 164, false);
	draw_set_alpha(1.0);
}

if (global.selected_piece == obj_piece_br) {
	draw_set_alpha(0.3);           // Set transparency (0 = invisible, 1 = solid)
    draw_set_color(c_lime);
    draw_rectangle(640, 200, 704, 264, false);
	draw_set_alpha(1.0);
}

if (global.selected_piece == obj_piece_lt) {
	draw_set_alpha(0.3);           // Set transparency (0 = invisible, 1 = solid)
    draw_set_color(c_lime);
    draw_rectangle(640, 300, 704, 364, false);
	draw_set_alpha(1.0);
}
if (global.selected_piece == obj_piece_rt) {
	draw_set_alpha(0.3);           // Set transparency (0 = invisible, 1 = solid)
    draw_set_color(c_lime);
    draw_rectangle(640, 400, 704, 464, false);
	draw_set_alpha(1.0);
}