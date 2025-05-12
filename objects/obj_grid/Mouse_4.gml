var grid_x = floor(mouse_x / cell_size);
var grid_y = floor(mouse_y / cell_size);

// Make sure we're inside the grid
if (grid_x >= 0 && grid_x < cols && grid_y >= 0 && grid_y < rows) {

    var is_corner = 
        (grid_x == 0 && grid_y == 0) ||
        (grid_x == cols - 1 && grid_y == 0) ||
        (grid_x == 0 && grid_y == rows - 1) ||
        (grid_x == cols - 1 && grid_y == rows - 1);

    var is_center = (grid_x == floor(cols / 2) && grid_y == floor(rows / 2));

    var occupied = (grid_state[grid_x][grid_y] != 0);

    if (!is_corner && !is_center && !occupied && global.selected_piece != noone) {

        var placed_piece = instance_create_layer(grid_x * cell_size, grid_y * cell_size, "Instances", global.selected_piece);

        // Apply rotation if defined
        if (variable_global_exists("selected_rotation")) {
            placed_piece.image_angle = global.selected_rotation;
        }

        // Track piece in grid
        grid_state[grid_x][grid_y] = placed_piece;

        show_debug_message("Placed piece at (" + string(grid_x) + "," + string(grid_y) + ")");
    } else {
        show_debug_message("Invalid location or already occupied.");
    }
}
