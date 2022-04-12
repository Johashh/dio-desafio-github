/// @description Destruindo o tiro
	
// É interessante usar o Room_Height como parâmetro para que o quando o código for alterado, não afete a lógica do jogo.
if (y > room_height + 32)
{
	instance_destroy();
}

if (x > 400 && mudardir == false)
{
	direction = 0;
	if ((x - xstart) > 100 && mudardir == false && instance_exists(obj_player))
	{
		mudardir = true;
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	} 
}
else if (x < 400 && mudardir == false && instance_exists(obj_player))
{
	direction = 180;
	if ((xstart - x) > 100 && mudardir == false)
	{
		mudardir = true;
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}
}
