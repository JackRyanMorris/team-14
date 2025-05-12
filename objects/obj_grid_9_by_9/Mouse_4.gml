var grid_x = floor(mouse_x / cell_size);
var grid_y = floor(mouse_y / cell_size);

// Check if inside grid and empty
if (grid_x < cols && grid_y < rows && board[grid_x][grid_y] == 0) {
    var new_piece = instance_create_layer(grid_x * cell_size, grid_y * cell_size, "Instances", obj_piece);
    board[grid_x][grid_y] = new_piece;
}