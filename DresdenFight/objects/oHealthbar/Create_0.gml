/// @description Insert description here
// You can write your code in this editor
image_index = player;
switch (player){
	case (0):
		if (!global.p1charConfirm){
			visible = false;
		}
	break;
	case (1):
		if (!global.p2charConfirm){
			visible = false;
		}
	break;
	case (2):
		if (!global.p3charConfirm){
			visible = false;
		}
	break;
	case (3):
		if (!global.p4charConfirm){
			visible = false;
		}
	break;
	case (4):
		if (!global.p5charConfirm){
			visible = false;
		}
	break;
}
instance_create_layer(x + 35, y + 16, "", oRedbar);
instance_create_layer(x + 35, y + 16, "", oHealth);

