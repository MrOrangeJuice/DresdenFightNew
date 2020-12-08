/// @description Insert description here
// You can write your code in this editor
//red bars
start = 30;
for (i = 0; i < 5; i++){
	draw_sprite_stretched(sBars, i, start + 68, 40, 100, 20);
	start += (global.gw/5) + UIPadding;
}
//health bars
start = 30;
draw_sprite_stretched(sBars, 1, start + 68, 40, global.p1health, 20);
start += (global.gw/5) + UIPadding;
draw_sprite_stretched(sBars, 1, start + 68, 40, global.p2health, 20);
start += (global.gw/5) + UIPadding;
draw_sprite_stretched(sBars, 1, start + 68, 40, global.p3health, 20);
start += (global.gw/5) + UIPadding;
draw_sprite_stretched(sBars, 1, start + 68, 40, global.p4health, 20);
start += (global.gw/5) + UIPadding;
draw_sprite_stretched(sBars, 1, start + 68, 40, global.p5health, 20);
//overlays
start = 30;
for (i = 0; i < 5; i++){
	draw_sprite(sHealthbars, i, start, 10);
	start += (global.gw/5) + UIPadding;
}