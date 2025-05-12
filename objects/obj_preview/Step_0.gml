if (global.selected_piece != noone) {
    var grid_x = floor(mouse_x / cell_size);
    var grid_y = floor(mouse_y / cell_size);
    x = grid_x * cell_size;
    y = grid_y * cell_size;
} else {
    instance_destroy(); // Remove if nothing selected
}