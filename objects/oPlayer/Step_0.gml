// get inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);

// motion

var move = key_right - key_left;
hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1, oWall)) && (key_jump)
{
	vsp = -7;
}

if (place_meeting(x+hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp),y, oWall))
	{
		x = x + sign(hsp);
	}
		hsp = 0;
}
x = x + hsp;
// vertical collision

if(place_meeting(x, y+vsp, oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y += sign(vsp)
	}
	vsp = 0;
}
y+= vsp;
