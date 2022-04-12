/// @description Animaçao de destruiçao

instance_create_layer(x, y, "Instances", obj_shoot_explosion);
audio_play_sound(snd_getting_shdup, 5, false);