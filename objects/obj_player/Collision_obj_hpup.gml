/// @description Aumentando o HP e curando

audio_play_sound(snd_getting_hpup, 5, false);

global.life++;
if (global.maxhp < 6) global.maxhp++;
instance_destroy(other);