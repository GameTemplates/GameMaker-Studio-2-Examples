/// @description move ball

x += lengthdir_x(SpeedX, MovementDirection);
y += lengthdir_y(SpeedY, MovementDirection);

//change direction at the edge of the screen

var borderSize = 10;

if(x <= borderSize)
{
	SpeedX *= -1;
}
else if(x > room_width - sprite_width -borderSize)
{
	SpeedX *= -1;
}

if(y <= borderSize)
{
	SpeedY *= -1;
}
//if ball is out of the screen, switch to a random room
else if(y > room_height)
{
	randomize();
	room_goto(random(2));
}


