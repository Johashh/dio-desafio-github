/// @description Movimento/Tamanho

if (x != clamp(x, 50, 750)) hspeed *= -1;
if (y > 650) instance_destroy();

//image_angle += v*10; girar
if (aumentando)
{
	image_xscale += v;
	image_yscale += v;
}
if (diminuindo)
{
	image_xscale -= v;
	image_yscale -= v;
}

// Impondo limites
if (image_xscale > 2 && image_yscale > 2)
{
	aumentando = false;
	diminuindo = true;
	v = random_range(.01, .1);
}
if (image_xscale < .5 && image_yscale < .5)
{
	aumentando = true;
	diminuindo = false;
	v = random_range(.01, .1);
}