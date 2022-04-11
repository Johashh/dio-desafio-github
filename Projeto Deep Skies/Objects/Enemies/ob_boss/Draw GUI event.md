**/// @description Mostrando a barra de vida**

draw_rectangle_color(200, 5, rectx + 200, 15, c_red, c_white, c_red, c_white, false); 
draw_rectangle(200, 5, 600, 15, true);
draw_text(room_width-100, 20, currenthp);