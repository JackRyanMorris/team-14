var grid_x = floor(mouse_x / cell_size);
var grid_y = floor(mouse_y / cell_size);
var draw_x = grid_x * cell_size;
var draw_y = grid_y * cell_size;

// Safety check for bounds
if (grid_x >= 0 && grid_x < cols && grid_y >= 0 && grid_y < rows) {
    
    var is_corner =
        (grid_x == 0 && grid_y == 0) ||
        (grid_x == cols - 1 && grid_y == 0) ||
        (grid_x == 0 && grid_y == rows - 1) ||
        (grid_x == cols - 1 && grid_y == rows - 1);
        
    var is_center = (grid_x == floor(cols / 2) && grid_y == floor(rows / 2));

    var occupied = (grid_state[grid_x][grid_y] != 0);

    var is_valid = !is_corner && !is_center && !occupied;

    // Highlight box
    draw_set_alpha(0.4);
    draw_set_color(is_valid ? c_lime : c_red);
    draw_rectangle(draw_x, draw_y, draw_x + cell_size, draw_y + cell_size, false);
    draw_set_alpha(1);

    // Draw the translucent preview sprite
    if (global.selected_piece != noone) {
        draw_set_alpha(0.5);
        draw_sprite(global.selected_piece.sprite_index, 0, draw_x, draw_y);
        draw_set_alpha(1);
    }
}