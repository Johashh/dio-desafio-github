/// @description Morrendo

var yy = (y - sprite_yoffset) + (sprite_height/2)
var e = instance_create_layer(x, yy, "Enemies", obj_explosion);
e.image_xscale = 2;
e.image_yscale = 2;
obj_controller.currentexp += 1500;
