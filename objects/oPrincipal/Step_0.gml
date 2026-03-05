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
		