/// @description Animação de explosão

audio_play_sound(snd_player_dead, 5, false);

instance_create_layer(x, y, "instances", obj_explosion_player);
