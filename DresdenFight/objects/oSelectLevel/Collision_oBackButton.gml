/// @description Go Back To Title

if(!keyboard)
{
	if(gamepad_button_check_pressed(player, gp_face1))
	{
		SlideTransition(TRANS_MODE.GOTO,rCharSelect);
	}
}
else
{
	if(keyboard_check_pressed(ord("P")))
	{
		SlideTransition(TRANS_MODE.GOTO,rCharSelect);
	}
}