x += vel * dir;

// Cambiar dirección al tocar los bordes del room
if (x <= 0) {
    dir = 3;
}

if (x >= room_width) {
    dir = -3;
}