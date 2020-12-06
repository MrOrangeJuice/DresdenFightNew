/// @description Change Image

switch(player)
{
	case 0:
		switch(global.p1char)
		{
			case "Harry":
				switch(global.p1skin)
				{
					case 0:
						sprite_index = sHarry1CSS;
						break;
					case 1:
						sprite_index = sHarry2CSS;
						break;
					case 2:
						sprite_index = sHarry3CSS;
						break;
					case 3:
						sprite_index = sHarry4CSS;
						break;
					case 4:
						sprite_index = sHarry5CSS;
						break;
				}
				break;
			case "Random":
				sprite_index = sRandomCSS;
				break;
			case "":
				sprite_index = sEmpty;
				break;
		}
		break;
	case 1:
		switch(global.p2char)
		{
			case "Harry":
				sprite_index = sHarry1CSS;
				switch(global.p2skin)
				{
					case 0:
						sprite_index = sHarry1CSS;
						break;
					case 1:
						sprite_index = sHarry2CSS;
						break;
					case 2:
						sprite_index = sHarry3CSS;
						break;
					case 3:
						sprite_index = sHarry4CSS;
						break;
					case 4:
						sprite_index = sHarry5CSS;
						break;
				}
				break;
			case "Random":
				sprite_index = sRandomCSS;
				break;
			case "":
				sprite_index = sEmpty;
				break;
		}
		break;
	case 2:
		switch(global.p3char)
		{
			case "Harry":
				switch(global.p3skin)
				{
					case 0:
						sprite_index = sHarry1CSS;
						break;
					case 1:
						sprite_index = sHarry2CSS;
						break;
					case 2:
						sprite_index = sHarry3CSS;
						break;
					case 3:
						sprite_index = sHarry4CSS;
						break;
					case 4:
						sprite_index = sHarry5CSS;
						break;
				}
				break;
			case "":
				sprite_index = sEmpty;
				break;
		}
		break;
	case 3:
		switch(global.p4char)
		{
			
			case "Harry":
				switch(global.p4skin)
				{
					case 0:
						sprite_index = sHarry1CSS;
						break;
					case 1:
						sprite_index = sHarry2CSS;
						break;
					case 2:
						sprite_index = sHarry3CSS;
						break;
					case 3:
						sprite_index = sHarry4CSS;
						break;
					case 4:
						sprite_index = sHarry5CSS;
						break;
				}
				break;
			case "Random":
				sprite_index = sRandomCSS;
				break;
			case "":
				sprite_index = sEmpty;
				break;
		}
		break;
	case 4:
		switch(global.p5char)
		{
			case "Harry":
				switch(global.p5skin)
				{
					case 0:
						sprite_index = sHarry1CSS;
						break;
					case 1:
						sprite_index = sHarry2CSS;
						break;
					case 2:
						sprite_index = sHarry3CSS;
						break;
					case 3:
						sprite_index = sHarry4CSS;
						break;
					case 4:
						sprite_index = sHarry5CSS;
						break;
				}
				break;
			case "Random":
				sprite_index = sRandomCSS;
				break;
			case "":
				sprite_index = sEmpty;
				break;
		}
		break;
}