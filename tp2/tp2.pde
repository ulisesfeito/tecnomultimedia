//Ulises,Feito
//tp2
//Ilusión Óptica Interactiva
//lik a video  https://www.youtube.com/watch?v=ejh6B2L-huI&ab_channel=ulisesfeito
float rot;  // Variable para controlar la rotación de las formas
float x, y; // Variables para controlar el tamaño de las formas
PImage img; // Variable para cargar una imagen

void setup() {
  size(800, 400); 
  img = loadImage("ilusion.jpg"); // Cargar una imagen llamada "ilusion.jpg"
  rectMode(CENTER); // Establecer el modo de dibujo de rectángulos en el centro
  noStroke(); // No dibujar bordes de las formas
  rot = radians(0); // Inicializar la variable de rotación en 0 grados
}

void draw() {
  background(0); // Fondo negro
  // Crea la ilusión
  ilusion();

  // Controlar la velocidad de rotación
  velocidad();


  image(img, 200, -200, 400, 400); // Mostrar la imagen en una posición específica
}
