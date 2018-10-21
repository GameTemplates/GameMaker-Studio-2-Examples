/// @description rotate and move asteroids
//rotate asteroid instances
image_angle += RotationSpeed;
//move asteroids
x += lengthdir_x(MovementSpeed, MovementDirection);
y += lengthdir_y(MovementSpeed, MovementDirection);
