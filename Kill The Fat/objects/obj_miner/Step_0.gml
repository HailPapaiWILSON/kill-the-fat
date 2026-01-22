//movimentação horizontal e colisão horizontal
move = -keyboard_check(ord("A")) +keyboard_check(ord("D")) -keyboard_check(vk_left) +keyboard_check(vk_right)
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

if move!=0{image_xscale = move}
 
//pulo e colisão vertical
if place_meeting(x, y + vsp, obj_ground)
{
	while !place_meeting(x, y + sign(vsp), obj_ground)
	{
		y += sign(vsp)
	}
	vsp = 0
	djmp = 2
}

y += vsp

if place_meeting(x, y + 1, obj_ground)
{
	if atk = 0 
	{
		if keyboard_check_pressed(vk_space){vsp = jmp}
	}
}
else 
{
	vsp += grav
}

if djmp > 0
{
	if keyboard_check_pressed(vk_space)
	{
		vsp = jmp
		djmp --
	}
}
else 
{
	vsp += grav
}
//morte
if hitcool > 0 {hitcool -= 1}

<<<<<<< HEAD
if place_meeting(x, y, obj_enemy)
=======
if life <= 0{game_restart()}

//ataque
if keyboard_check_pressed(ord("X")) && atk = 0
if mouse_check_button_pressed(mb_left) && atk = 0
>>>>>>> a5f5a27 (criação de um combate em estagio basico e reorganização de alguns trechos de codigo)
{
	atk = 1
	d = instance_create_depth(x, y, depth - 1, obj_attack)
	d.x = x
	d.y = y
	d.image_xscale = image_xscale
}
<<<<<<< HEAD

if life == 0
{
	game_restart()
}
=======
>>>>>>> a5f5a27 (criação de um combate em estagio basico e reorganização de alguns trechos de codigo)
