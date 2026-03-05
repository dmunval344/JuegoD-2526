
var velocidad = 4;

// Movimiento con WASD
if (keyboard_check(ord("D"))) {
    x += velocidad;
}

if (keyboard_check(ord("A"))) {
    x -= velocidad;
}

if (keyboard_check(ord("S"))) {
    y += velocidad;
}

if (keyboard_check(ord("W"))) {
    y -= velocidad;
}

// Limitar dentro de la room
if (x < 0) x = 0;
if (x > room_width) x = room_width;

if (y < 0) y = 0;
if (y > room_height) y = room_height;

/*
var up    = keyboard_check(vk_up);
var left  = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var down  = keyboard_check(vk_down);

friction=0.05


    if (up) 
        motion_add( 90 , 0.1); 

    if (left)
        motion_add(image_speed,-0.1);  //Izquierda

    if (right)
        motion_add(image_speed,0.1);  //Derecha
		
	if (down)
	    motion_add( 270 , 0.1);
		
*/