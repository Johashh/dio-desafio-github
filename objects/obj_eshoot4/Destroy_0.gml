/// @description Animação da colisão do tiro

instance_create_layer(x, y, "Enemies", obj_bomb_explosion);
var t = instance_create_layer(x+45, y, "Enemies", obj_eshoot2);
t.direction = 0;
t.image_angle = 90
var t = instance_create_layer(x , y-45, "Enemies", obj_eshoot2);
t.direction = 90;
t.image_angle = 180;
var t = instance_create_layer(x-45 , y, "Enemies", obj_eshoot2);
t.direction = 180;
t.image_angle = 270;
var t = instance_create_layer(x , y+45, "Enemies", obj_eshoot2);
t.direction = 270;

var t = instance_create_layer(x+22.5, y-22.5, "Enemies", obj_eshoot2);
t.direction = 45;
t.image_angle = 135
var t = instance_create_layer(x-22.5, y-22.5, "Enemies", obj_eshoot2);
t.direction = 135;
t.image_angle = 225
var t = instance_create_layer(x-22.5, y+22.5, "Enemies", obj_eshoot2);
t.direction = 225;
t.image_angle = 315;
var t = instance_create_layer(x+22.5, y+22.5, "Enemies", obj_eshoot2);
t.direction = 315;
t.image_angle = 45;

audio_play_sound(snd_bomb_explosion, 5, false);
audio_stop_sound(snd);


