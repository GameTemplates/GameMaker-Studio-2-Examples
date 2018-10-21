/// @description initialize

//create some large asteroids when the room is created
for(i = 0; i < 10; i++)
{
	instance_create_layer(random(room_width), random(room_height), "Instances", obj_largeAsteroid);
}


//set font
draw_set_font(font0);

