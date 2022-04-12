/// @description Exibindo informações na tela

// Definindo a fonte
draw_set_halign(fa_left)
draw_set_font(fnt_exibir);

// Exibindo o level atual
//draw_text(30, 20, "NIVEL: " + string(global.level));

// Exibindo a xp atual
draw_text(30 , 40, "PONTOS " + string(int64((currentexp))));

// Exibindo a xp para o próximo nível
//draw_text(30, 60, "XP PROXIMO NIVEL: " + string(int64(expl - currentexp)));

// Exibindo a barra de vida do player;
if (global.life >= 1) // Barra 01
{
	draw_text(20, 580, "LIFE");
	draw_set_alpha(.5);
	draw_rectangle_color(20, 570, 60, 590, c_green, c_green, c_green, c_green, false);
	draw_set_alpha(1);
	draw_rectangle(20, 570, 60, 590, true);
}
else
{
	draw_text(20, 580, "LIFE");
	draw_set_alpha(.5);
	draw_rectangle_color(20, 570, 60, 590, c_green, c_green, c_green, c_green, true);
	draw_set_alpha(1);
	draw_rectangle(20, 570, 60, 590, true);
}

if (global.life >= 2) // Barra 02
{
	draw_set_alpha(.5);
	draw_rectangle_color(65, 570, 105, 590, c_green, c_green, c_green, c_green, false);
	draw_set_alpha(1);
	draw_rectangle(65, 570, 105, 590, true);
}
else
{
	draw_set_alpha(.5);
	draw_rectangle_color(65, 570, 105, 590, c_green, c_green, c_green, c_green, true);
	draw_set_alpha(1);
	draw_rectangle(65, 570, 105, 590, true);
}

if (global.life >= 3) // Barra 03
{
	draw_set_alpha(.5);
	draw_rectangle_color(110, 570, 150, 590, c_green, c_green, c_green, c_green, false);
	draw_set_alpha(1);
	draw_rectangle(110, 570, 150, 590, true);
}
else
{
	draw_set_alpha(.5);
	draw_rectangle_color(110, 570, 150, 590, c_green, c_green, c_green, c_green, true);
	draw_set_alpha(1);
	draw_rectangle(110, 570, 150, 590, true);
}

if (global.maxhp >= 4) // Barra 04
{
	if (global.life >= 4)
	{
		draw_set_alpha(.5);
		draw_rectangle_color(155, 570, 195, 590, c_green, c_green, c_green, c_green, false);
		draw_set_alpha(1);
		draw_rectangle(155, 570, 195, 590, true)
	}
	else
	{
		draw_set_alpha(.5);
		draw_rectangle_color(155, 570, 195, 590, c_green, c_green, c_green, c_green, true);
		draw_set_alpha(1);
		draw_rectangle(155, 570, 195, 590, true)
	}
}

if (global.maxhp  >= 5) // Barra 05
{
	if (global.life >= 5)
	{
		draw_set_alpha(.5);
		draw_rectangle_color(200, 570, 240, 590, c_green, c_green, c_green, c_green, false);
		draw_set_alpha(1);
		draw_rectangle(200, 570, 240, 590, true)
	}
	else 
	{
		draw_set_alpha(.5);
		draw_rectangle_color(200, 570, 240, 590, c_green, c_green, c_green, c_green, true);
		draw_set_alpha(1);
		draw_rectangle(200, 570, 240, 590, true)
	}
}

// Exibindo as cargas do escudo do player;
if (global.shield_charge >= 1) // Barra 01
{
	draw_text(20, 550, "SHD");
	draw_set_alpha(.5);
	draw_rectangle_color(20, 540, 60, 560, c_blue, c_blue, c_blue, c_blue, false);
	draw_set_alpha(1);
	draw_rectangle(20, 540, 60, 560, true);
}
else
{
	draw_text(20, 550, "SHD");
	draw_set_alpha(.5);
	draw_rectangle_color(20, 540, 60, 560, c_blue, c_blue, c_blue, c_blue, true);
	draw_set_alpha(1);
	draw_rectangle(20, 540, 60, 560, true);
}

if (global.shield_charge >= 2) // Barra 02
{
	draw_set_alpha(.5);
	draw_rectangle_color(65, 540, 105, 560, c_blue, c_blue, c_blue, c_blue, false);
	draw_set_alpha(1);
	draw_rectangle(65, 540, 105, 560, true);
}
else
{
	draw_set_alpha(.5);
	draw_rectangle_color(65, 540, 105, 560, c_blue, c_blue, c_blue, c_blue, true);
	draw_set_alpha(1);
	draw_rectangle(65, 540, 105, 560, true);
}

if (global.shield_charge >= 3) // Barra 03
{
	draw_set_alpha(.5);
	draw_rectangle_color(110, 540, 150, 560, c_blue, c_blue, c_blue, c_blue, false);
	draw_set_alpha(1);
	draw_rectangle(110, 540, 150, 560, true);
}
else
{
	draw_set_alpha(.5);
	draw_rectangle_color(110, 540, 150, 560, c_blue, c_blue, c_blue, c_blue, true);
	draw_set_alpha(1);
	draw_rectangle(110, 540, 150, 560, true);
}

if (global.maxshd >= 4) // Barra 04
{
	if (global.shield_charge >= 4)
	{
		draw_set_alpha(.5);
		draw_rectangle_color(155, 540, 195, 560,  c_blue, c_blue, c_blue, c_blue, false);
		draw_set_alpha(1);
		draw_rectangle(155, 540, 195, 560, true)
	}
	else
	{
		draw_set_alpha(.5);
		draw_rectangle_color(155, 540, 195, 560,  c_blue, c_blue, c_blue, c_blue, true);
		draw_set_alpha(1);
		draw_rectangle(155, 540, 195, 560, true)
	}
}

if (global.maxshd >= 5) // Barra 05
{
	if (global.shield_charge >= 5)
	{
		draw_set_alpha(.5);
		draw_rectangle_color(200, 540, 240, 560,  c_blue, c_blue, c_blue, c_blue, false);
		draw_set_alpha(1);
		draw_rectangle(200, 540, 240, 560, true)
	}
	else
	{
		draw_set_alpha(.5);
		draw_rectangle_color(200, 540, 240, 560,  c_blue, c_blue, c_blue, c_blue, true);
		draw_set_alpha(1);
		draw_rectangle(200, 540, 240, 560, true)
	}
}
/*else
{
	if (obj_player.shield_charge >= 5)
	{
		maxshd5 = true;
	}
}*/

/*	 Exibindo o level atual 
var level_text = string(round(global.level));
draw_text(20, 20, "NÍVEL: " + level_text);

	 Exibindo xp atual
var currentexp_text = string(round(currentexp));
draw_text(20 , 40, "EXP ATUAL: " + currentexp_text);

	Exibindo xp para o próximo level
var expl_texto = string(round(expl - currentexp));
draw_text(20, 60, "EXP PROXIMO NÍVEL: " + expl_texto);
*/