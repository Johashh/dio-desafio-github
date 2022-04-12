/// @description Insert description here
// You can write your code in this editor

if (sumindo)
{
	alpha -= .03;
}
else
{
	alpha += .03;
}

if (alpha >= 1)
{
	sumindo = true;
	room_goto(destino);
}

if (alpha <= 0 && newroom)
{
	instance_destroy();
}