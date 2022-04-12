/// @description Colidindo com tiro 3

audio_play_sound(snd_explosion, 5, false);
instance_destroy(other);
instance_create_layer(x, y, "enemies", obj_shoot_explosion);
global.enemy_killed++;