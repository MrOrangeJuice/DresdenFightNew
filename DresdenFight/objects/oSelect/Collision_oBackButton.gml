/// @description Go Back To Title

if(!keyboard)
{
	if(gamepad_button_check_pressed(player, gp_face1))
	{
		audio_play_sound(click1,2654374578,false);
		SlideTransition(TRANS_MODE.GOTO,rTitle);
	}
}
else
{
	if(keyboard_check_pressed(ord("P")))
	{
		audio_play_sound(click1,2654374578,false);
		SlideTransition(TRANS_MODE.GOTO,rTitle);
	}
}