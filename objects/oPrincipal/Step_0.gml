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
if (x > room_width - sprite_width) x = room_width - sprite_width;

if (y < 0) y = 0;
if (y > room_height - sprite_height) y = room_height - sprite_height;