/// @description Progress the Transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
	}
	else
	{
		percent = min(1.2,percent + max(((1.2 - percent)/10),0.005));
	}
	
	if (percent == 1.2) || (percent == 0)
	{
		switch (mode)	
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}

// Check for restart
if (keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(4,gp_select)) {
	SlideTransition(TRANS_MODE.RESTART);
}