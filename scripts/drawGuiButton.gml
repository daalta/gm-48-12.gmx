//Draws a button with centered text

//arg0: x
//arg1: y
//arg2: image_index
//arg3: text
//arg4 [optional]: text color

draw_set_font(fontMain);
if(argument_count > 4) {
    draw_set_colour(argument[4]);
} else {
    draw_set_colour(c_white);
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite_ext(sButton, argument[2], argument[0], argument[1], 1, 1, 0, c_white, 1);
draw_text(argument[0] + sprite_get_width(sButton) / 2 - 10, argument[1] + sprite_get_height(sButton) / 2, argument[3]);


