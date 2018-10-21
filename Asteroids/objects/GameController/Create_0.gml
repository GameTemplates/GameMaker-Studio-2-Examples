/// @description initialize game

//set player life
Life = 3;

//create some large asteroids when the room is created
for(i = 0; i < 3; i++)
{
	instance_create_layer(random(room_width), random(room_height), "Instances", obj_largeAsteroid);
}

//set font
draw_set_font(font0);