/// @description Atirando 

if (instance_exists(obj_player))
{
	if ((y < 400 && x > 32) or (y < 400 && x < 568))
	{
		instance_create_layer(x, y, "Enemies", obj_eshoot1);
	}
}
alarm[0] = room_speed * random_range(1.5, 2.5);