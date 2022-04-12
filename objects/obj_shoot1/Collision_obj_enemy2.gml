/// @description Colidindo com o inimigo2

audio_play_sound(snd_explosion, 5, false);
instance_destroy(); // Destruindo o próprio tiro
instance_destroy(other); // Destruindo inimigo

obj_controller.currentexp += 5;
instance_create_layer(x, y, "instances", obj_shoot_explosion);

global.enemy_killed++;