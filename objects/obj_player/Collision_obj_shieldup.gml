/// @description Aumentando a carga do escudo;

audio_play_sound(snd_shield_colision, 5, false);

global.shield_charge++;
if (global.maxshd < 5) global.maxshd++;
instance_destroy(other);