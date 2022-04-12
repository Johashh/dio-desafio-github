/// @description Efeito de explsão

var chance = random(99);
instance_create_layer(x, y, "Enemies", obj_explosion);

if (chance > 95) instance_create_layer(x, y, "Enemies", obj_hpup);
if (chance + global.level > 95) // 15% + 1%.(globallevel) de chance de drop
{
	instance_create_layer(x, y, "Enemies", obj_powerup);
}


