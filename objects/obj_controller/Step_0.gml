/// @description

// Checando pontuaçao
if (currentexp > global.maxpoints)
{
	global.maxpoints = currentexp;
}

// Checando quantidade de inimigos mortos
if (global.enemy_killed > global.max_enemykilled)
{
	global.max_enemykilled = global.enemy_killed;
}

//level do player
if (currentexp >= expl)
{
	global.level++;
	expl *= 2;
}

if (global.enemy_killed >= 50)
{
	instance_create_layer(room_width/2, -100, "Instances", obj_shieldup);
	global.enemy_killed = 0;
}

if (!instance_exists(obj_player) && dead == false)
{
	alarm[1] = room_speed * 2;
	dead = true;
}

if (global.level > 5 && boss_dead == false)
{
	alarm[1] = room_speed * 2;
	boss_dead = true;
}
