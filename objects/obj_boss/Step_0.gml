/// @description Movimento e Comportamendo

/* O tamanho do retângulo não pode ser ajustavel no create por conta do parêntese
 pois o currenthp na forumula abaixo não atualiza. */
rectx = (currenthp/hpmax) * 400;

// Matando o boss
if (currenthp < 1)
{
	instance_destroy();
}

// Travando o boss
if (y >= 150 && natela == false)
{
	vspeed = 0;
	natela = true;
	audio_play_sound(snd_boss, 3, true);
}

// Ativando delay
if (instance_exists(obj_boss) && natela == true) delay++;

// Ativando estados
if (estado == 0 && natela == true)
{
	// Movendo
	if (hspeed == 0) hspeed = 2;
	if (x != clamp(x, 150, 650))
	{
		hspeed *= -1;
	}
		if ((delay == 25 or delay == 55) && repetir < 5 && instance_exists(obj_player))
		{
			var d = instance_create_layer(x+30, y, "Enemies", obj_eshoot2);
			d.direction = point_direction(x, y, obj_player.x, obj_player.y)
			d.image_angle = d.direction + 90; 
			var d = instance_create_layer(x, y, "Enemies", obj_eshoot2);
			d.direction = point_direction(x, y, obj_player.x, obj_player.y)
			d.image_angle = d.direction + 90; 
			var d = instance_create_layer(x-30, y, "Enemies", obj_eshoot2);
			d.direction = point_direction(x, y, obj_player.x, obj_player.y)
			d.image_angle = d.direction + 90; 
	
		}
		if (delay == 85 && repetir < 5) 
		{
			instance_create_layer(x, y, "Enemies", obj_eshoot4);
			repetir++;
			delay = 0;
		}
		
		if (delay >= 120 && repetir >= 5 && currenthp > 500) 
		{
			estado = irandom(1);
			repetir = 0;
			delay = 0;
		}
		else if (delay >= 120 && repetir >= 5 && currenthp <= 500)
		{
			estado = 2;
			repetir = 0;
			delay = 0;
			hspeed = 0;
		}
}
else if (estado == 1 && natela == true)
{
	hspeed = 0;
	if (delay >= 20 && repetir < 4 )
	{
		var t = instance_create_layer(x+30, y, "Enemies", obj_eshoot2);
		t.image_angle = 20;
		t.direction = 270+20;
		var t = instance_create_layer(x-30, y, "Enemies", obj_eshoot2);
		t.image_angle = -20;
		t.direction = 270-20;
		repetir++;
		delay = 0;
	}
	else if (delay >= 1 && repetir == 4)
		{
			if (delay == 10) 
			{
				instance_create_layer(x+75, y-28, "Enemies", obj_eshoot3);
				instance_create_layer(x-75, y-28, "Enemies", obj_eshoot3);
			}
			if (delay == 20) 
			{
				instance_create_layer(x+92, y-82, "Enemies", obj_eshoot3);
				instance_create_layer(x-92, y-82, "Enemies", obj_eshoot3);
			}
			if (delay == 30)
			{
					instance_create_layer(x+64, y-133, "Enemies", obj_eshoot3);
					instance_create_layer(x-64, y-133, "Enemies", obj_eshoot3);
			}
			if (delay == 40) 
			{
				instance_create_layer(x+50, y-140, "Enemies", obj_eshoot3);
				instance_create_layer(x-50, y-140, "Enemies", obj_eshoot3);
				delay = 0;
				repetir++;
			}
		}
	else if (delay >= 120 && repetir > 4 && currenthp > 500)
		{
			delay = 0;
			estado = irandom(1);
			repetir = 0;
			hspeed = 0;
		}
	else if (delay >= 120 && repetir > 4 && currenthp <= 500)
	{
			delay = 0;
			estado = 2;
			repetir = 0;
			hspeed = 0;
	}
	
	
}else if (estado == 2 && natela == true)
{
	if (hspeed == 0) hspeed = 4;
	if (x != clamp(x, 150, 650)) hspeed *= -1
	if (delay == 60 && repetir < 8)
	{
		var t = instance_create_layer(x+40, y, "Enemies", obj_eshoot2);
		t.image_angle = 40;
		t.direction = 270 + 40;
		var t = instance_create_layer(x+20, y, "Enemies", obj_eshoot2);
		t.image_angle = 20;
		t.direction = 270 + 20;
		var t = instance_create_layer(x, y, "Enemies", obj_eshoot2);
		t.direction = 270
		var t = instance_create_layer(x-20, y, "Enemies", obj_eshoot2);
		t.image_angle = -20;
		t.direction = 270 -20;
		var t = instance_create_layer(x-40, y, "Enemies", obj_eshoot2);
		t.image_angle = -40;
		t.direction = 270 -40;
		repetir++;
		delay = 0;
	}
	else if (repetir >= 8) 
	{
		if (x == room_width/2) hspeed = 0;
		if (delay == 30 && repetir < 21)
		{
			instance_create_layer(x+75, y-28, "Enemies", obj_eshoot3);
			instance_create_layer(x-75, y-28, "Enemies", obj_eshoot3);
			instance_create_layer(x+92, y-82, "Enemies", obj_eshoot3);
			instance_create_layer(x-92, y-82, "Enemies", obj_eshoot3);
			instance_create_layer(x+64, y-133, "Enemies", obj_eshoot3);
			instance_create_layer(x-64, y-133, "Enemies", obj_eshoot3);
			instance_create_layer(x+50, y-140, "Enemies", obj_eshoot3);
			instance_create_layer(x-50, y-140, "Enemies", obj_eshoot3); 
			
			var t = instance_create_layer(x+40, y, "Enemies", obj_eshoot2);
			t.image_angle = 40;
			t.direction = 270 + 40;
			var t = instance_create_layer(x+30, y, "Enemies", obj_eshoot2);
			t.image_angle = 30;
			t.direction = 270 + 30;
			var t = instance_create_layer(x+20, y, "Enemies", obj_eshoot2);
			t.image_angle = 20;
			t.direction = 270 + 20;
			var t = instance_create_layer(x+10, y, "Enemies", obj_eshoot2);
			t.image_angle = 10;
			t.direction = 270 + 10;
			var t = instance_create_layer(x, y, "Enemies", obj_eshoot2);
			t.direction = 270
			var t = instance_create_layer(x-10, y, "Enemies", obj_eshoot2);
			t.image_angle = -10;
			t.direction = 270 -10;
			var t = instance_create_layer(x-20, y, "Enemies", obj_eshoot2);
			t.image_angle = -20;
			t.direction = 270 -20;
			var t = instance_create_layer(x-30, y, "Enemies", obj_eshoot2);
			t.image_angle = -30;
			t.direction = 270 - 30;
			var t = instance_create_layer(x-40, y, "Enemies", obj_eshoot2);
			t.image_angle = -40;
			t.direction = 270 -40;
			
			repetir++;
			delay = 0;
		}
		else if (delay == 120 && repetir >= 21)
		{
			delay = 0;
			repetir = 0;
			estado = choose(0, 1);
		}
	}
}