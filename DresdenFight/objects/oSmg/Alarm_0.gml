/// @description Insert description here
// You can write your code in this editor
if (bulletcounter > 0){
	audio_play_sound(gunshot,35783963464956730928467,false);
	var bullet = instance_create_layer(x,y,"Bullets",OBullet);
		with (bullet)
		{
			speed = 15;
			direction = other.image_angle + random_range(-3,3);
			image_angle = direction;
		}
		bullet.player = self.player;
	bulletcounter --;
	alarm[0] = room_speed / 10;
}