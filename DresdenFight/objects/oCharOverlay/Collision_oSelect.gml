/// @description Swap Skin
if(other.player == player)
{
	switch(player)
	{
		case 0:
			if(gamepad_button_check_pressed(player,gp_face1))
			{
				global.p1skin++;
				if(global.p1skin > 4)
				{
					global.p1skin = 0;	
				}
			}
			break;
		case 1:
			if(gamepad_button_check_pressed(player,gp_face1))
			{
				global.p2skin++;
				if(global.p2skin > 4)
				{
					global.p2skin = 0;	
				}
			}
			break;
		case 2:
			if(gamepad_button_check_pressed(player,gp_face1))
			{
				global.p3skin++;
				if(global.p3skin > 4)
				{
					global.p3skin = 0;	
				}
			}
			break;
		case 3:
			if(gamepad_button_check_pressed(player,gp_face1))
			{
				global.p4skin++;
				if(global.p4skin > 4)
				{
					global.p4skin = 0;	
				}
			}
			break;
		case 4:
			if(keyboard_check_pressed(ord("P")))
			{
				global.p5skin++;
				if(global.p5skin > 4)
				{
					global.p5skin = 0;	
				}
			}
			break;
	}
}