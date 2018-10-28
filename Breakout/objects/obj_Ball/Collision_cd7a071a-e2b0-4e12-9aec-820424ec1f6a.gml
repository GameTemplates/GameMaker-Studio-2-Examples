/// @description colliding with brick

//change direction based on whch side the collision is happened
var brick = 0;
with(obj_Brick)
{
	self.brick = instance_id;
}

if(brick.bbox_right < self.bbox_left)
{
	SpeedX *= -1;
}
else if(brick.bbox_left > self.bbox_right )
{
	SpeedX *= -1;
}

if(brick.bbox_bottom < self.bbox_top)
{
	SpeedY *= -1;
}
else if(brick.bbox_top > self.bbox_bottom)
{
	SpeedY *= -1;
}
