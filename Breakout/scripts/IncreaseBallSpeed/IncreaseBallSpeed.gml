//increase speed of ball

if(SpeedX < 0 and SpeedX > -MaximumSpeed)
{
	SpeedX -= Acceleration;
}
else if(SpeedX > 0 and SpeedX < MaximumSpeed)
{
	SpeedX += Acceleration;
}
if(SpeedY < 0 and SpeedY > -MaximumSpeed)
{
	SpeedY -= Acceleration;
}
else if(SpeedY > 0 and SpeedY < MaximumSpeed)
{
	SpeedY += Acceleration;
}