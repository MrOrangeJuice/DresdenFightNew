/// @description Insert description here
// You can write your code in this editor
key_left = 0;
key_right = 0;
key_jump = 0;
key_duck = 0;
key_run = 0;
key_up = 0;

// Gamepad input
if (gamepad_axis_value(player,gp_axislh) < -0.2 || gamepad_button_check(player,gp_padl) || gamepad_axis_value(player + 4,gp_axislh) < -0.2 || gamepad_button_check(player + 4,gp_padl))
{
	key_left = 1;
}
else if (player == 4){
	key_left = keyboard_check(ord("A"));
}


if (gamepad_axis_value(player,gp_axislh) > 0.2 || gamepad_button_check(player,gp_padr) || gamepad_axis_value(player + 4,gp_axislh) > 0.2 || gamepad_button_check(player + 4,gp_padr))
{
	key_right = 1;
}
else if (player == 4){
	key_right = keyboard_check(ord("D"));
}

if (gamepad_axis_value(player,gp_axislv) > 0.4 || gamepad_button_check(player,gp_padd) || gamepad_axis_value(player + 4,gp_axislv) > 0.4 || gamepad_button_check(player + 4,gp_padd))
{
	key_duck = 1;
}else if (player == 4){
	key_jump = keyboard_check(vk_space);
}

if (gamepad_button_check(player,gp_face1) || gamepad_button_check(player + 4,gp_face1) ||  gamepad_button_check(player,gp_shoulderr) || gamepad_button_check(player + 4,gp_shoulderr))
{
	key_jump = 1;
}else if (player == 4){
	key_duck = keyboard_check(ord("S"));
}

if (gamepad_button_check(player,gp_face3) || gamepad_button_check(player + 4,gp_face2) || gamepad_button_check(player + 4,gp_face3) || gamepad_button_check(player + 4,gp_face2) || gamepad_button_check(player,gp_shoulderl) || gamepad_button_check(player + 4,gp_shoulderl))
{
	key_run = 1;
}
else if (player == 4){
	key_run = keyboard_check(vk_lshift);
}

if (gamepad_axis_value(player,gp_axislv) < -0.4 || gamepad_button_check(player,gp_padu) || gamepad_axis_value(player + 4,gp_axislv) < -0.4 || gamepad_button_check(player + 4,gp_padu))
{
	key_up = 1;
}
else if (player == 4){
	key_up = keyboard_check(ord("W"));
}

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	if(key_run && abs(hsp) > 5) 
	{
		vsp = -18;
	}
	else 
	{
		vsp = -18;
	}
	audio_play_sound(cloth2, 5, false);
}

// Variable jump height
if vsp < 0 && (!(key_jump)) //if you're moving upwards in the air but not holding down jump
{
	vsp *= 0.85; //essentially, divide your vertical speed
}

// Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Animation
if (!place_meeting(x,y+1,oWall))
{
	switch(player)
	{
		case 0:
			switch(global.p1skin)
			{
				case 0:
					sprite_index = sHarryJump1;
					break;
				case 1:
					sprite_index = sHarryJump2;
					break;
				case 2:
					sprite_index = sHarryJump3;
					break;
				case 3:
					sprite_index = sHarryJump4;
					break;
				case 4:
					sprite_index = sHarryJump5;
					break;
			}
			break;
		case 1:
			switch(global.p2skin)
			{
				case 0:
					sprite_index = sHarryJump1;
					break;
				case 1:
					sprite_index = sHarryJump2;
					break;
				case 2:
					sprite_index = sHarryJump3;
					break;
				case 3:
					sprite_index = sHarryJump4;
					break;
				case 4:
					sprite_index = sHarryJump5;
					break;
			}
			break;
		case 2:
			switch(global.p3skin)
			{
				case 0:
					sprite_index = sHarryJump1;
					break;
				case 1:
					sprite_index = sHarryJump2;
					break;
				case 2:
					sprite_index = sHarryJump3;
					break;
				case 3:
					sprite_index = sHarryJump4;
					break;
				case 4:
					sprite_index = sHarryJump5;
					break;
			}
			break;
		case 3:
			switch(global.p4skin)
			{
				case 0:
					sprite_index = sHarryJump1;
					break;
				case 1:
					sprite_index = sHarryJump2;
					break;
				case 2:
					sprite_index = sHarryJump3;
					break;
				case 3:
					sprite_index = sHarryJump4;
					break;
				case 4:
					sprite_index = sHarryJump5;
					break;
			}
			break;
		case 4:
			switch(global.p5skin)
			{
				case 0:
					sprite_index = sHarryJump1;
					break;
				case 1:
					sprite_index = sHarryJump2;
					break;
				case 2:
					sprite_index = sHarryJump3;
					break;
				case 3:
					sprite_index = sHarryJump4;
					break;
				case 4:
					sprite_index = sHarryJump5;
					break;
			}
			break;
	}
	image_speed = 0;	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
	else 
	{
		image_speed = 1;
		if (sign(hsp) == 0)
		{
			switch(player)
			{
				case 0:
					switch(global.p1skin)
					{
						case 0:
							sprite_index = sHarryIdle1;
							break;
						case 1:
							sprite_index = sHarryIdle2;
							break;
						case 2:
							sprite_index = sHarryIdle3;
							break;
						case 3:
							sprite_index = sHarryIdle4;
							break;
						case 4:
							sprite_index = sHarryIdle5;
							break;
					}
					break;
				case 1:
					switch(global.p2skin)
					{
						case 0:
							sprite_index = sHarryIdle1;
							break;
						case 1:
							sprite_index = sHarryIdle2;
							break;
						case 2:
							sprite_index = sHarryIdle3;
							break;
						case 3:
							sprite_index = sHarryIdle4;
							break;
						case 4:
							sprite_index = sHarryIdle5;
							break;
					}
					break;
				case 2:
					switch(global.p3skin)
					{
						case 0:
							sprite_index = sHarryIdle1;
							break;
						case 1:
							sprite_index = sHarryIdle2;
							break;
						case 2:
							sprite_index = sHarryIdle3;
							break;
						case 3:
							sprite_index = sHarryIdle4;
							break;
						case 4:
							sprite_index = sHarryIdle5;
							break;
					}
					break;
				case 3:
					switch(global.p4skin)
					{
						case 0:
							sprite_index = sHarryIdle1;
							break;
						case 1:
							sprite_index = sHarryIdle2;
							break;
						case 2:
							sprite_index = sHarryIdle3;
							break;
						case 3:
							sprite_index = sHarryIdle4;
							break;
						case 4:
							sprite_index = sHarryIdle5;
							break;
					}
					break;
				case 4:
					switch(global.p5skin)
					{
						case 0:
							sprite_index = sHarryIdle1;
							break;
						case 1:
							sprite_index = sHarryIdle2;
							break;
						case 2:
							sprite_index = sHarryIdle3;
							break;
						case 3:
							sprite_index = sHarryIdle4;
							break;
						case 4:
							sprite_index = sHarryIdle5;
							break;
					}
					break;
			}
		}
		else
		{
			switch(player)
			{
				case 0:
					switch(global.p1skin)
					{
						case 0:
							sprite_index = sHarryRun1;
							break;
						case 1:
							sprite_index = sHarryRun2;
							break;
						case 2:
							sprite_index = sHarryRun3;
							break;
						case 3:
							sprite_index = sHarryRun4;
							break;
						case 4:
							sprite_index = sHarryRun5;
							break;
					}
					break;
				case 1:
					switch(global.p2skin)
					{
						case 0:
							sprite_index = sHarryRun1;
							break;
						case 1:
							sprite_index = sHarryRun2;
							break;
						case 2:
							sprite_index = sHarryRun3;
							break;
						case 3:
							sprite_index = sHarryRun4;
							break;
						case 4:
							sprite_index = sHarryRun5;
							break;
					}
					break;
				case 2:
					switch(global.p3skin)
					{
						case 0:
							sprite_index = sHarryRun1;
							break;
						case 1:
							sprite_index = sHarryRun2;
							break;
						case 2:
							sprite_index = sHarryRun3;
							break;
						case 3:
							sprite_index = sHarryRun4;
							break;
						case 4:
							sprite_index = sHarryRun5;
							break;
					}
					break;
				case 3:
					switch(global.p4skin)
					{
						case 0:
							sprite_index = sHarryRun1;
							break;
						case 1:
							sprite_index = sHarryRun2;
							break;
						case 2:
							sprite_index = sHarryRun3;
							break;
						case 3:
							sprite_index = sHarryRun4;
							break;
						case 4:
							sprite_index = sHarryRun5;
							break;
					}
					break;
				case 4:
					switch(global.p5skin)
					{
						case 0:
							sprite_index = sHarryRun1;
							break;
						case 1:
							sprite_index = sHarryRun2;
							break;
						case 2:
							sprite_index = sHarryRun3;
							break;
						case 3:
							sprite_index = sHarryRun4;
							break;
						case 4:
							sprite_index = sHarryRun5;
							break;
					}
					break;
			}
		}
	}

if (gunRef.image_angle > 90 && gunRef.image_angle < 270) {
	image_xscale = -1;
}
else {
	image_xscale = 1;	
}

switch (player){
	case 0:
		if (global.p1health == 0)
		{
			instance_destroy(gunRef);
			instance_destroy();
		}
	break;
	case 1:
		if (global.p2health == 0)
		{
			instance_destroy(gunRef);
			instance_destroy();
		}
	break;
	case 2:
		if (global.p3health == 0)
		{
			instance_destroy(gunRef);
			instance_destroy();
		}
	break;
	case 3:
		if (global.p4health == 0)
		{
			instance_destroy(gunRef);
			instance_destroy();
		}
	break;
	case 4:
		if (global.p5health == 0)
		{
			instance_destroy(gunRef);
			instance_destroy();
		}
	break;
}