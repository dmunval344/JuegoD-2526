var mx = 0;
var my = 0;


if (keyboard_check(ord("A"))) mx -= 1;
if (keyboard_check(ord("D"))) mx += 1;
if (keyboard_check(ord("W"))) my -= 1;
if (keyboard_check(ord("S"))) my += 1;


if (mx != 0 || my != 0) {
    var len = sqrt(mx * mx + my * my);
    mx = (mx / len) * spd;
    my = (my / len) * spd;
}


x += mx;
if (place_meeting(x, y, obj_wall) )
    x -= mx;



y += my;
if (place_meeting(x, y, obj_wall) )
    y -= my;



if (fire_timer > 0) fire_timer -= 1;
if (keyboard_check_pressed(vk_space) && fire_timer <= 0) {

    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);
    var dir = point_direction(x,y,mx,my);
    var px = x + lengthdir_x(20, dir);
    var py = y + lengthdir_y(20, dir);
    var proj = instance_create_layer(px, py, "Instances", obj_projectile);
    proj.direction = dir;
    proj.speed = 6;
    proj.image_angle = dir;
    fire_timer = fire_cooldown;
}


x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);

