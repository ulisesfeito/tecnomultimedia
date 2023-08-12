void ilusion() { 
  x = width; // Inicializar x con el ancho de la pantalla
  y = x / sqrt(2); // Calcular y como la mitad de x dividida por la raíz cuadrada de 2
  translate(width / 4, height / 2); // Mover el origen al centro izquierdo del lienzo

  // Bucle para dibujar formas
  for (int i = 0; i < 100; i++) {
    pushMatrix(); // Guardar la matriz de transformación actual

    // Establecer el color de relleno 
    fill(i * 10, 10 - i * 25, 15 - i * 10);

    rotate(rot); // Rotar las formas según el valor de rotación actual

    // Dibujar una elipse en el origen (0, 0) con tamaño x
    ellipse(0, 0, x, x);

    fill(0); // Establecer color de relleno negro
    rect(0, 0, y, y); // Dibujar un rectángulo negro en el origen con tamaño y

    x = y; // Actualizar x con el valor actual de y
    y = x / sqrt(2); // Calcular y como la mitad de x dividida por la raíz cuadrada de 2

    popMatrix(); // Restaurar la matriz de transformación anterior
  }
}
