/// @description increase ball speed

//increase speed of ball on X and Y axis by 1
increase = 1;

if(SpeedX < 0)
{
	SpeedX -= increase;
}
else if(SpeedX > 0)
{
	SpeedX += increase;
}

if(SpeedY < 0)
{
	SpeedY -= increase;
}
else if(SpeedY > 0)
{
	SpeedY += increase;
}

//after 5 seconds, increase speed again
alarm[0] = room_speed * 5;