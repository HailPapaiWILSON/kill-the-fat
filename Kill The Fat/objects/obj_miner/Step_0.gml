//movimentação horizontal e colisão horizontal
move = -keyboard_check(ord("A")) +keyboard_check(ord("D"))
hsp = spd * move

if place_meeting(x + hsp, y, obj_ground)
{
	while !place_meeting(x + sign(hsp), y, obj_ground)
	{
		x += sign(hsp)
	}
	
	hsp = 0
}

x += hsp

//pulo e colisão vertical
if place_meeting(x, y + vsp, obj_ground)
{
	while !place_meeting(x, y + sign(vsp), obj_ground)
	{
		y += sign(vsp)
	}
	vsp = 0
}


y += vsp

if place_meeting(x, y + 1, obj_ground)
{
	if keyboard_check_pressed(vk_space)
	{
		vsp = jmp
	}
}
else
{
	vsp += grav
}

//morte


if place_meeting(x, y, obj_enemy)
{
	
	life --
}

if life == 0
{
	game_restart()
}

