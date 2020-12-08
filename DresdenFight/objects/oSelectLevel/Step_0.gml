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

// Select Level
if(place_meeting(x,y,oChicagoIcon))
{
	
	var i;
	for(i = 0; i < 8; i += 1)
	{
		if(gamepad_button_check_pressed(i, gp_face1) || keyboard_check_pressed(ord("P")))
		{ 	
			audio_play_sound(click1,2654374578,false);
			SlideTransition(TRANS_MODE.GOTO,rCityBuilding);		
		}
	
	}
}
else if(place_meeting(x,y,oCastleIcon))
{
	var i;
	for(i = 0; i < 8; i += 1)
	{
		if(gamepad_button_check_pressed(i, gp_face1) || keyboard_check_pressed(ord("P")))
		{
			audio_play_sound(click1,2654374578,false);
			SlideTransition(TRANS_MODE.GOTO,rCastle);		
		}
	
	}
}
else if(place_meeting(x,y,oNeverNeverIcon))
{
	var i;
	for(i = 0; i < 8; i += 1)
	{
		if(gamepad_button_check_pressed(i, gp_face1) || keyboard_check_pressed(ord("P")))
		{
			audio_play_sound(click1,2654374578,false);
			SlideTransition(TRANS_MODE.GOTO,rNeverNever);		
		}
	
	}
}
else if(place_meeting(x,y,oRandomIcon))
{
	var i;
	for(i = 0; i < 8; i += 1)
	{
		if(gamepad_button_check_pressed(i, gp_face1) || keyboard_check_pressed(ord("P")))
		{
			var r = irandom(2)
			audio_play_sound(click1,2654374578,false);
			switch(r)
			{
				case 0:
					SlideTransition(TRANS_MODE.GOTO,rCastle);		
				break;
				case 1:
					SlideTransition(TRANS_MODE.GOTO,rNeverNever);		
				break;
				case 2:
					SlideTransition(TRANS_MODE.GOTO,rCityBuilding);
				break;
			}
			
		}
	
	}
}

// Click start button
if(false)
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

// Get controller inputs
	
var i;
for (i = 0; i < 8; i += 1)
{
	//Left
	if(gamepad_axis_value(i,gp_axislh) < -0.2)
	{
		x = x + gamepad_axis_value(i,gp_axislh) * moveSpeed;
	}
	//Right
	else if(gamepad_axis_value(i,gp_axislh) > 0.2)
	{
		x = x + gamepad_axis_value(i,gp_axislh) * moveSpeed;
	}
	//Up
	if (gamepad_axis_value(i,gp_axislv) < -0.2)
	{
		y = y + gamepad_axis_value(i,gp_axislv) * moveSpeed;
	}
	//Down
	else if (gamepad_axis_value(i,gp_axislv) > 0.2)
	{
		y = y + gamepad_axis_value(i,gp_axislv) * moveSpeed;
	}
		
}
	
if(keyboard_check(ord("A")) || keyboard_check(vk_left))
{
	x = x - moveSpeed;
}
else if(keyboard_check(ord("D")) || keyboard_check(vk_right))
{
	x = x + moveSpeed;	
}
if(keyboard_check(ord("W")) || keyboard_check(vk_up))
{
	y = y - moveSpeed;
}
else if(keyboard_check(ord("S")) || keyboard_check(vk_down))
{
	y = y + moveSpeed;
}