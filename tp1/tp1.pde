/*
Ulises,Feito
 Tp2
 */

//LETRA
PFont Letra;
float tTexto;


int seg;

PImage biopus;
PImage biopus2;
PImage biopus3;
PImage fin;

boolean boton = false; 
float posy;
int y = 420; 
int x = 450; 
int w = 60; 
int h = 20;




void setup() {
  size(640, 480);
  // cargar imagen y texto  
  biopus = loadImage("biopus.jpg");
  biopus2 = loadImage("biopus2.jpg");
  biopus3 = loadImage("biopus3.jpg");
  fin = loadImage("fin.jpeg");

  frameRate(60);
     

 //texto y imagen  
 
  textAlign( CENTER, CENTER );
  imageMode( CENTER ); 

  
}
void draw() {
  background(0);

  

  println(frameCount);
if (frameCount % 60 == 0);
  {

    seg ++;
    if (seg >0 && seg <= 300){
      background(0);

  //velocidad texto
  tTexto = tTexto + 0.7;

  //imagen 1
  image(biopus,320,240, 640, 480);
  fill(255 );
  textSize(tTexto);
  text ( "Los anillos de la serpiente ", width/2, height/2 - tTexto/2 );
  text ( "Estudio Biopus  ", width/2, height/2+ tTexto/2 );
  



  //imagen 2
  }else if (seg >300 && seg <= 800){
     image(biopus2,320,240, 640, 480);
     tTexto = tTexto + 0.9;
     textSize(20);
     fill(255,0,0);
     text("En el estudio Biopus, podemos ver muestras de obras sumamente interactivas," , 200, 50, width/2, height/2);
     text("en las que el público puede interactuar con las obras", 200, 130, width/2, height/2 );
     text("Este tipo de obras provocan que el espectador además de poner en práctica", 200, 210,width/2, height/2 );
     text("su sistema perceptivo visual y mental, también active su sistema motriz.", 200, 300,width/2, height/2 ); 
      

 
  // imagen 3
    }else if (seg >800 && seg <= 1300){
     tTexto = tTexto + 0.10;
     image(biopus3,320,240, 640, 480 );
     textSize(20);
     fill(255 );
     text("En esta obra la serpiente proyecta informacion de los usuarios en redes",200, 50, width/2, height/2 );
     text("y nos hace re plantearnos que tanta verdad hay ", 200, 130, width/2, height/2 );
     text("en lo que nosotros publicamos y mostramos por redes", 200, 190, width/2, height/2 );
  
     

  
  // imagen fin 
    }else if (seg >1300 && seg <= 1800){
     tTexto = tTexto + 0.7;
     image(fin,320,240, 640, 480 );
     textSize(100);
     fill(255);
     text("FIN",  320, 220 );
  
   
  //boton
   
   if((mouseX > x) && (mouseX < x + w) && (mouseY > y) && (mouseY > y + h)) {
      boton = true; }
      else{
      boton = false;
    } 
    fill(255,0,0);
    rect(x,y,w,h);
    fill(255);
    textSize(17);
    text("reiniciar",480,427);
      
    }
}
} 
void mousePressed (){
     if( boton = true) 
   {seg = 0;
    tTexto = 0;}
 }
