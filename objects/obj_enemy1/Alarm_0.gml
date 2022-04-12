/// @description Atirando

if (y < 500 && y > 0)
{
	instance_create_layer(x, y, "Enemies", obj_eshoot2);

	alarm[0] = room_speed * random_range(1.5, 3);
}