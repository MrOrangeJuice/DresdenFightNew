/// @description Insert description here
// You can write your code in this editor
  
/// @description Collide with walls

// Collide with wall below ball
if (place_meeting(x,y,oWall)) {
	instance_destroy();
}
