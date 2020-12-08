/// @description Insert description here
// You can write your code in this editor
if (bulletcounter > 0){
	with (instance_create_layer(x,y,"Bullets",OBullet))
	{
		speed = 15;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	bulletcounter --;
	alarm[0] = 1;
}