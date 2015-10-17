//Draws a Gui Button

//arg0: x
//arg1: y
//arg2: image_index
//arg3: text
//arg4: isActive

if(argument4) {
    drawGuiButton(argument0, argument1, argument2, argument3, c_yellow);
} else {
    drawGuiButton(argument0, argument1, 0, argument3);
}
