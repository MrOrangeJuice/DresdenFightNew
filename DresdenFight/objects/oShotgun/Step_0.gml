/// @description Insert description here
// You can write your code in this editor
x = playerRef.x;
y = playerRef.y;


if (player == 4){
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else {
	var controllerh = gamepad_axis_value(player,gp_axisrh);
	var controllerv = gamepad_axis_value(player,gp_axisrv);
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
	{
		controllerangle = point_direction(0,0,controllerh,controllerv)
	}
	image_angle = controllerangle;
}

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if ((gamepad_button_check(player,gp_shoulderrb) || (player == 4 && mouse_check_button(mb_left))) && (firingdelay < 0))
{
	audio_play_sound(shotgun,35783963464956730928467,false);
	recoil = 20;
	firingdelay = 100;
	for (i = 0; i < 5; i++){
			var bullet = instance_create_layer(x,y,"Bullets",OBullet);
			with (bullet)
			{
				speed = 15;
				direction = other.image_angle + random_range(-10,10);
				image_angle = direction;
			}
			bullet.player = self.player;
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
