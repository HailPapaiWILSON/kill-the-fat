event_inherited()

if place_meeting(x + sign(hsp), y, obj_ground) || place_meeting(x + !sign(hsp), y, obj_ground)
{
	while !place_meeting(x + sign(hsp), y, obj_ground)
	{
		x += hsp
	}
	
	hsp = -sign(hsp)
}
inv = spd * hsp

//x += inv