/// @description Colidindo c inimigo1

audio_play_sound(snd_explosion, 5, false);
audio_play_sound(snd_shield_colision, 5, false);
instance_destroy(other);
obj_controller.currentexp += 2;