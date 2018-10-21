/// @description warp the ship


if(x < 0 - image_xscale)
{
	x = room_width;
}

if(x > room_width + image_xscale)
{
	x = 0;
}

if(y < 0 - image_yscale)
{
	y = room_height;
}

if(y > room_height + image_yscale)
{
	y = 0;
}