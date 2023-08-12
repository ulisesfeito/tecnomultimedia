void velocidad() {
  rot+=-0.029;
  if (mousePressed) {
    rot += 0.15; // Aumentar la velocidad si el mouse está presionado
  } else {
    rot -= 0.0001; // Disminuir la velocidad si el mouse no está presionado
  }
}
