cell_size = 64;
cols = 9;
rows = 9;

grid_state = array_create(cols, 0);
for (var i = 0; i < cols; i++) {
    grid_state[i] = array_create(rows, 0);
}


global.cols = cols;
global.rows = rows;
global.grid_state = grid_state;

// Create terminals (rotate as needed)
instance_create_layer(0 * cell_size, 0 * cell_size, "Instances", obj_terminal_tl); // top-left
instance_create_layer((cols - 1) * cell_size, 0 * cell_size, "Instances", obj_terminal_tr); // top-right
instance_create_layer(0 * cell_size, (rows - 1) * cell_size, "Instances", obj_terminal_bl); // bottom-left
instance_create_layer((cols - 1) * cell_size, (rows - 1) * cell_size, "Instances", obj_terminal_br); // bottom-right

// Center hub
instance_create_layer(floor(cols/2) * cell_size, floor(rows/2) * cell_size, "Instances", obj_hub);


for (var i = 0; i < cols; i++) {
    for (var j = 0; j < rows; j++) {
        // Skip corners
        var is_corner = 
            (i == 0 && j == 0) || 
            (i == cols - 1 && j == 0) || 
            (i == 0 && j == rows - 1) || 
            (i == cols - 1 && j == rows - 1);
        
        // Skip center
        var is_center = (i == floor(cols / 2) && j == floor(rows / 2));
        
        if (!is_corner && !is_center) {
            instance_create_layer(i * cell_size, j * cell_size, "Instances", obj_common);
        }
    }
}



