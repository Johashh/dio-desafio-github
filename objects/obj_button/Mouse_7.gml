/// @description Ao soltar o botao esquerdo do mouse

if (destino != noone)
{
	var t = instance_create_layer(0, 0, "instances", obj_transition);
	t.destino = destino;	
}
else game_end();