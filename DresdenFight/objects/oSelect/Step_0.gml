/// @description Movement and Graphics

// Define inputs
key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;

if(hover)
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}

// Set global variables depending on position
if(place_meeting(x,y,oHarryIcon))
{
	switch(player)
	{
		case 0:
			if(!global.p1charConfirm)
			{
				global.p1char = "Harry";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p1charConfirm = true;
				}
			}
			break;
		case 1:
			if(!global.p2charConfirm)
			{
				global.p2char = "Harry";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p2charConfirm = true;
				}
			}
			break;
		case 2:
			if(!global.p3charConfirm)
			{
				global.p3char = "Harry";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p3charConfirm = true;
				}
			}
			break;
		case 3:
			if(!global.p4charConfirm)
			{
				global.p4char = "Harry";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p4charConfirm = true;
				}
			}
			break;
		case 4:
			if(!global.p5charConfirm)
			{
				global.p5char = "Harry";
				if(keyboard_check_pressed(ord("P")))
				{
					global.p5charConfirm = true;
				}
			}
			break;
	}
}
else if(place_meeting(x,y,oRandomIcon))
{
	switch(player)
	{
		case 0:
			if(!global.p1charConfirm)
			{
				global.p1char = "Random";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p1charConfirm = true;
				}
			}
			break;
		case 1:
			if(!global.p2charConfirm)
			{
				global.p2char = "Random";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p2charConfirm = true;
				}
			}
			break;
		case 2:
			if(!global.p3charConfirm)
			{
				global.p3char = "Random";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p3charConfirm = true;
				}
			}
			break;
		case 3:
			if(!global.p4charConfirm)
			{
				global.p4char = "Random";
				if(gamepad_button_check_pressed(player,gp_face1))
				{
					global.p4charConfirm = true;
				}
			}
			break;
		case 4:
			if(!global.p5charConfirm)
			{
				global.p5char = "Random";
				if(keyboard_check_pressed(ord("P")))
				{
					global.p5charConfirm = true;
				}
			}
			break;
	}
}
else
{
	switch(player)
	{
		case 0:
			if(!global.p1charConfirm)
			{
				global.p1char = "";
			}
			break;
		case 1:
			if(!global.p2charConfirm)
			{
				global.p2char = "";
			}
			break;
		case 2:
			if(!global.p3charConfirm)
			{
				global.p3char = "";
			}
			break;
		case 3:
			if(!global.p4charConfirm)
			{
				global.p4char = "";
			}
			break;
		case 4:
			if(!global.p5charConfirm)
			{
				global.p5char = "";
			}
			break;
	}
}

// Click start button
if(place_meeting(x,y,oStart))
{
	oStart.hover = true;
	if(player == 4)
	{
		if(keyboard_check_pressed(ord("P")))
		{
			SlideTransition(TRANS_MODE.NEXT);
		}
	}
	else
	{
		if(gamepad_button_check_pressed(player,gp_face1))
		{
			SlideTransition(TRANS_MODE.NEXT);	
		}
	}
}
else
{
	oStart.hover = false;	
}

// Change sprite depending on player color
switch(player)
{
	case 0:
		sprite_index = sp1Select;
		break;
	case 1:
		sprite_index = sp2Select;
		break;
	case 2:
		sprite_index = sp3Select;
		break;
	case 3:
		sprite_index = sp4Select;
		break;
	case 4:
		sprite_index = sp5Select;
		break;
}

if(!keyboard)
{
	// Get controller inputs
	
	// Left
	if (gamepad_axis_value(player,gp_axislh) < -0.2)
	{
		key_left = abs(gamepad_axis_value(player,gp_axislh));
	}
	if (gamepad_axis_value(player + 4,gp_axislh) < -0.2)
	{
		key_left = abs(gamepad_axis_value(player + 4,gp_axislh));
	}
	
	// Right
	if (gamepad_axis_value(player,gp_axislh) > 0.2)
	{
		key_right = abs(gamepad_axis_value(player,gp_axislh));
	}
	if (gamepad_axis_value(player + 4,gp_axislh) > 0.2)
	{
		key_right = abs(gamepad_axis_value(player ,gp_axislh));
	}
	
	// Up
	if (gamepad_axis_value(player,gp_axislv) < -0.2)
	{
		key_up = abs(gamepad_axis_value(player,gp_axislv));
	}
	if (gamepad_axis_value(player + 4,gp_axislv) < -0.2)
	{
		key_up = abs(gamepad_axis_value(player + 4,gp_axislv));
	}
	
	// Down
	if (gamepad_axis_value(player,gp_axislv) > 0.2)
	{
		key_down = abs(gamepad_axis_value(player,gp_axislv));
	}
	if (gamepad_axis_value(player + 4,gp_axislv) > 0.2)
	{
		key_down = abs(gamepad_axis_value(player + 4,gp_axislv));
	}
}
else
{
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
}

// Calculate cursor movement
var movehor = key_right - key_left;
var movever = key_down - key_up;

hsp = moveSpeed * movehor;
vsp = moveSpeed * movever;

x = x + hsp;
y = y + vsp;