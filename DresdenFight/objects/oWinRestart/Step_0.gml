/// @description Progress Scene
if(gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(1,gp_face1) || gamepad_button_check_pressed(2,gp_face1) || gamepad_button_check_pressed(3,gp_face1) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(5,gp_face1) || gamepad_button_check_pressed(6,gp_face1) || gamepad_button_check_pressed(7,gp_face1) || keyboard_check_pressed(ord("P")))
{
	SlideTransition(TRANS_MODE.RESTART);
}