/// @description Insert description here
// You can write your code in this editor
// Collide with wall below ball
if (place_meeting(x,y+1,oWall)) {
	move_bounce_solid(0);
}

// Collide with wall above ball
if (place_meeting(x,y-1,oWall)) {
	move_bounce_solid(0);
}

// Collide with wall to the right of ball
if (place_meeting(x-1,y,oWall)) {
	move_bounce_solid(0);
}

// Collide with wall to the left of ball
if (place_meeting(x+1,y,oWall)) {
	move_bounce_solid(0);
}