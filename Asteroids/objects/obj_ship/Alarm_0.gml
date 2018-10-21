/// @description shoot bullet
//create an instance of the bullet, and set angle to be the same as the ship
inst = instance_create_layer(x, y, "Instances", obj_bullet);
inst.image_angle = image_angle;
//play shoot sound
audio_play_sound(snd_LaserShoot,10,false);
//set shot back to 0 so we can shoot again
Shot = 0;