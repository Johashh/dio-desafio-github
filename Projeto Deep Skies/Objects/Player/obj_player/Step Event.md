**/// @description Movimentação do player**
**//Impedindo que o player saia da tela**
x = clamp(x, 40, room_width-40);
y = clamp(y, 40, room_height-40);

**//Status maximo do player**

if (global.life > 5) global.life = 5;
if (global.maxshd > 5) global.maxshd = 5;

**//Comandos básicos**

var esq = keyboard_check(ord("A"));		// esquerda
var dir = keyboard_check(ord("D"));		// direita
var cima = keyboard_check(ord("W"));		// cima
var baixo = keyboard_check(ord("S"));		// baixo
var shoot = keyboard_check_pressed(vk_space);     //atirar
var shield = keyboard_check_pressed(ord("E"));      //escudo

**// Criando o escudo**
if (shield && global.shield_charge > 0) 
{
	instance_create_layer(x, y, "instances", obj_shield);
	global.shield_charge--;
}

**//Atirando**

if (shoot)
{
	audio_play_sound(snd_player_shoot, 10, false);
}

**// Movimento Horizontal**
// Checando o lado
var velh = (dir-esq) * vel;
// Aplicando velocidade
x += velh;

**// Movimento vertical**
// Checando cima/baixo
var velv = (baixo - cima) * vel;
// Aplicando velocidade
y += velv;

**// Criando tiro**
if (shoot_level == 1)
{
	if(shoot)
	{
		instance_create_layer(x, y,"instances",obj_shoot1);
	}
} 
**// Criando tiro2**
else if (shoot_level == 2)
{
	if(shoot)
	{
		var t = instance_create_layer(x+20, y, "instances", obj_shoot2);
		t.hspeed = 4;
		var t = instance_create_layer(x-20, y, "instances", obj_shoot2);
		t.hspeed = -4;
	}
}
**// Crianto tiro3**
else if (shoot_level == 3)
{
	if (shoot)
	{
		var t = instance_create_layer(x+20, y, "instances", obj_shoot2);
		t.hspeed = 4;
		var t = instance_create_layer(x-20, y, "instances", obj_shoot2);
		t.hspeed = -4;
		instance_create_layer(x, y,"instances",obj_shoot1);
	}
}

**//Criando tiro4**
else if (shoot_level == 4)
{
	if (shoot)
	{
		var val = 20;
		repeat(3)
		{
			var t = instance_create_layer(x, y, "instances", obj_shoot1)
			t.direction = 90+val;
			t.image_angle = val;
			val -= 20;
		}
	}
}

**//Criando tiro5**
else if (shoot_level >= 5)
{
	if (shoot) 
	{
		instance_create_layer(x, y, "instances", obj_shoot3)
	}
}

if (global.life < 1) instance_destroy();