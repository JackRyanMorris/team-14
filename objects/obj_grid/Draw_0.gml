
for (var i = 0; i < cols; i++) {
    for (var j = 0; j < rows; j++) {
        var x1 = i * cell_size;
        var y1 = j * cell_size;
        var x2 = x1 + cell_size;
        var y2 = y1 + cell_size;

        // Color background
        var bg_color = make_color_rgb(230, 230, 230); // Default light gray

        // Corner highlights
        // if (i == 0 && j == 0)         bg_color = make_color_rgb(240, 200, 210); // top-left (pink)
        // else if (i == cols-1 && j == 0)    bg_color = make_color_rgb(210, 210, 240); // top-right (lavender)
        // else if (i == 0 && j == rows-1)    bg_color = make_color_rgb(255, 235, 200); // bottom-left (peach)
        // else if (i == cols-1 && j == rows-1) bg_color = make_color_rgb(220, 240, 220); // bottom-right (light green)

        // Draw filled cell
        draw_set_color(bg_color);
        draw_rectangle(x1, y1, x2, y2, true); // Fill

        // Draw outline
        draw_set_color(c_gray);
        draw_rectangle(x1, y1, x2, y2, false);
    }
}
