/// @description initialize values

Speed = 13;
SpeedX = Speed;
SpeedY = Speed;
Direction = 180 - random(140);
Life = 3;

//increase speed of ball after 5 seconds
alarm[0] = room_speed * 5;

//create as many life object as many life we have
var lx = 10;
var ly = 10;
for(i = 0; i < Life; i++)
{
	instance_create_layer(lx, ly, "GUI", obj_Life);
	lx += obj_Life.sprite_width;
}
