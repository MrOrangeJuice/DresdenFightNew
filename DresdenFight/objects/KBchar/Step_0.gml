/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);
key_duck = keyboard_check(ord("S"));
key_run = keyboard_check(vk_lshift);
key_up = keyboard_check(ord("W"));

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
		vsp = -16;
	}
	audio_play_sound(sndJump, 5, false);
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
	switch(global.p1skin)
	{
		case 0:
			sprite_index = sBitMan1Jump;
			break;
		case 1:
			sprite_index = sBitMan2Jump;
			break;
		case 2:
			sprite_index = sBitMan3Jump;
			break;
		case 3:
			sprite_index = sBitMan4Jump;
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
			switch(global.p1skin)
			{
				case 0:
					sprite_index = sBitMan1Idle;
					break;
				case 1:
					sprite_index = sBitMan2Idle;
					break;
				case 2:
					sprite_index = sBitMan3Idle;
					break;
				case 3:
					sprite_index = sBitMan4Idle;
					break;
			}
		}
		else
		{
			switch(global.p1skin)
			{
				case 0:
					sprite_index = sBitMan1Run;
					break;
				case 1:
					sprite_index = sBitMan2Run;
					break;
				case 2:
					sprite_index = sBitMan3Run;
					break;
				case 3:
					sprite_index = sBitMan4Run;
					break;
			}
		}
	}

if (hsp != 0) image_xscale = sign(hsp);
