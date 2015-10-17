//Draws a button with centered text

//arg0: x
//arg1: y
//arg2: image_index
//arg3: text


draw_sprite_ext(sButton, argument2, argument0, argument1, 1, 1, 0, c_white, 1);
draw_text(argument0 + sprite_get_width(sButton) / 2 - 10, argument1 + sprite_get_height(sButton) / 2, argument3);


