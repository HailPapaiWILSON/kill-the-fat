if place_meeting(x + sign(hsp), y, obj_ground) || place_meeting(x + !sign(hsp), y, obj_ground)
{
	while !place_meeting(x + sign(hsp), y, obj_ground)
	{
		x += hsp
	}
	
	hsp = -sign(hsp)
}
inv = spd * hsp

x += inv

if place_meeting(x + 50, y, obj_miner) || place_meeting(x -50, y, obj_miner)
{

	if mouse_check_button_pressed(mb_left)
	{
		life--
	}
}

if life == 0
{
	position_destroy(x, y)
}
