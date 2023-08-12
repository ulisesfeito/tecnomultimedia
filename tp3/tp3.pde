/*
Ulises,Feito
 Tp3
 https://www.youtube.com/watch?v=xy5va3cNb3g&ab_channel=ulisesfeito
 Aventura Gráfica
 */

PImage[] fondos = new PImage[14];
String estado;
String[] textos = new String[18];


void setup() {
size (600,600);
for (int i = 0; i<14; i++) {
    fondos[i] = loadImage("chanchito_"+nf(i, 3)+".jpg");// Cargar imágenes
    estado = "comienzo";

  }
 iniciartexto(); 
}
void draw() {
  if (estado.equals("comienzo")) {
    image(fondos[0], 0, 0, width, height); //Mostrar la primera imagen
     botonDibujado(200, 50, 150, 50);
    text(textos[11], 200, 40);
  }
else if (estado.equals("chanchito")) {//
   chanchito();
  } else if (estado.equals("chanchito1")) {
    chanchito1();
  } else if (estado.equals("chanchito2")) {
   chanchito2();
  } else if (estado.equals("chanchito3")) {
    chanchito3();
  } else if (estado.equals("lobo")) {
    lobo();
  } else if (estado.equals("cahanchoelige")) {
    cahanchoelige();
  } else if (estado.equals("chanchitocorre")) {
    chanchitocorre();
  } else if (estado.equals("lobopaja")) {
    lobopaja();
  } else if (estado.equals("chanchitomadera")) {
    chanchitomadera();
  } else if (estado.equals("loboelige")) {
    loboelige();
  } else if (estado.equals("chanchossalvan")) {
    chanchossalvan();
  } else if (estado.equals("fin")) {
    fin();
  } else if (estado.equals("loboentra")) {
    loboentra();
  } else if (estado.equals("lobocome")) {
    lobocome();
  } 
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 180, 50, 150, 50) && estado.equals("comienzo")) { // inicio
    estado = "chanchito";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchito")) { 
    estado = "chanchito1";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchito1")) { 
    estado = "chanchito2";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchito2")) { 
    estado = "chanchito3";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchito3")) { 
    estado = "lobo";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("lobo")) {
    estado = "cahanchoelige";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("cahanchoelige")) { 
    estado = "chanchitocorre";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchitocorre")) { 
    estado = "lobopaja";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("lobopaja")) { 
    estado = "chanchitomadera";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchitomadera")) { 
    estado = "loboelige";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("loboelige")) { 
    estado = "chanchossalvan";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("chanchossalvan")) { 
    estado = "fin";
  } else if (botonPressed(mouseX, mouseY,260, 50, 50, 50) && estado.equals("fin")) { 
    estado = "comienzo";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("loboentra")) {
    estado = "lobocome";
  } else if (botonPressed(mouseX, mouseY, 50, 60, 50, 50) && estado.equals("lobocome")) {
    estado = "comienzo";
  } else if (botonPressed(mouseX, mouseY, 350, 60, 50, 50) && estado.equals("cahanchoelige")) { 
    estado = "chanchitomadera";
  } else if (botonPressed(mouseX, mouseY, 350, 60, 50, 50) && estado.equals("loboelige")) { 
    estado = "loboentra";
  }
}
// Controlar los cambios de estado según los botones presionados
void botonDibujado(int px, int py, int ancho, int alto) {//crea boton
  if (botonOver(mouseX, mouseY, px, py, ancho, alto )) {
    fill(255);
  }  {
    fill(255);
  }
  rect(px, py, ancho, alto, alto/4);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}
