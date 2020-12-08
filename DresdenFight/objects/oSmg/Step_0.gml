/// @description Insert description here
// You can write your code in this editor
x = playerRef.x;
y = playerRef.y;


var controllerh = gamepad_axis_value(0,gp_axisrh);
var controllerv = gamepad_axis_value(0,gp_axisrv);
if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
{
	controllerangle = point_direction(0,0,controllerh,controllerv)
}
image_angle = controllerangle;

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (gamepad_button_check(0,gp_shoulderrb) && (firingdelay < 0))
{
	audio_play_sound(gunshot,35783963464956730928467,false);
	recoil = 4;
	firingdelay = 20;
	with (instance_create_layer(x,y,"Bullets",OBullet))
	{
		speed = 15;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
		bulletcounter = 3;
		alarm[0] = 1; //bullet creation code is here for burst fire
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}