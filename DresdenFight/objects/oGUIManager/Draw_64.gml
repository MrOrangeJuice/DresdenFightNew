/// @description Insert description here
// You can write your code in this editor

//health bars
start = 30;
if (global.p1charConfirm){
	draw_sprite_stretched(sBars, 0, start + 68, 40, 100, 20);
	draw_sprite_stretched(sBars, 1, start + 68, 40, global.p1health, 20);
	draw_sprite(sHealthbars, 0, start, 10);
}
start += (global.gw/5) + UIPadding;
if (global.p2charConfirm){
	draw_sprite_stretched(sBars, 0, start + 68, 40, 100, 20);
	draw_sprite_stretched(sBars, 1, start + 68, 40, global.p2health, 20);
	draw_sprite(sHealthbars, 1, start, 10);
}
start += (global.gw/5) + UIPadding;
if (global.p3charConfirm){
	draw_sprite_stretched(sBars, 0, start + 68, 40, 100, 20);
	draw_sprite_stretched(sBars, 1, start + 68, 40, global.p3health, 20);
	draw_sprite(sHealthbars, 2, start, 10);
}
start += (global.gw/5) + UIPadding;
if (global.p4charConfirm){
	draw_sprite_stretched(sBars, 0, start + 68, 40, 100, 20);
	draw_sprite_stretched(sBars, 1, start + 68, 40, global.p4health, 20);
	draw_sprite(sHealthbars, 3, start, 10);
}
start += (global.gw/5) + UIPadding;
if (global.p5charConfirm){
	draw_sprite_stretched(sBars, 0, start + 68, 40, 100, 20);
	draw_sprite_stretched(sBars, 1, start + 68, 40, global.p5health, 20);
	draw_sprite(sHealthbars, 4, start, 10);
}