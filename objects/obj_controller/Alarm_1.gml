/// @description Reiniciando o jogo

var tra = instance_create_layer(x, y, "Instances", obj_transition);
tra.destino = rm_start;
audio_stop_all();
