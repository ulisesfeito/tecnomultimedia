/*
Ulises,Feito
 Tp1
 TITULO Y CREDITOS THE SIMPSON 
 */

//LETRA
PFont Letra;
float tTexto;

//NUBE
PImage Aguila;
float posXa7;


PImage Nube;
float posXn1, posXn2, posXn3, posXn4, posXn5, posXn6;

//CREDITOS 
int seg;


void setup() {
  size(400, 400);
  frameRate(60);
  
  // cargar imagen y texto  
  Letra = loadFont( "Simpsonfont-100.vlw" );
  Nube = loadImage( "nube.png" );
  Aguila = loadImage( "aguila.png" );
 //texto y imagen  
  textFont( Letra);
  textAlign( CENTER, CENTER );
  imageMode( CENTER );

  // valores 
  tTexto = 1;
  posXn1 = 100;
  posXn2 = 300;
  posXn3 = 200;
  posXn4 = 350;
  posXn5 = 180;
  posXn6 = 50;
  posXa7 = 0;
  
}
void draw() {
  background(0, 190, 255);

  println(frameCount);
if (frameCount % 60 == 0);
  {
    seg ++;
    if (seg >0 && seg <= 350){
      background(0, 190, 255);


  //Imagen nubes 
  //nube 1
  image( Nube, posXn1, 200, 400, 400 );
  //nube 2
  image( Nube, posXn2, 200, 400, 400 );
  //nube 3
  image( Nube, posXn3, 100, 50, 50 );
  //nube 4
  image( Nube, posXn4, 40, 300, 300 );
  //nube 5 
  image( Nube, posXn5, 350, 300, 300 );
  // nube 6
  image( Nube, posXn6, 350, 400, 400);
  //Aguila
  image( Nube, mouseX, mouseY, 20, 20);

  //Aguila
  image( Aguila, posXa7, 200, 300, 300);
  
   // texto
  textSize(tTexto);
  fill(255, 217, 23 );
  text ( "The", width/2, height/2 - tTexto/2 );
  text ( "Simpsons", width/2, height/2+ tTexto/2 );
  

  // velocidad  
  //TEXTO
  tTexto = tTexto + 0.5;
  //NUBES
  posXn1 = posXn1 - 1.5;
  posXn2 = posXn2 + 1.5;
  posXn3 = posXn3 + 0.5;
  posXn4 = posXn4 - 0.5;
  posXn5 = posXn5 - 1;
  posXn6 = posXn6 + 0.5;
  //AGUILA
  posXa7 = posXa7 + 3;

  //creditos finales
  }else if (seg >330 && seg <= 450){
      background( 0 );
      textSize(30);
      fill(255, 217, 23 );
      text("Executive  Producer", 200, 80);
      text("MIKE  SCULLY", 200, 150);

    }else if (seg >450 && seg <= 550){
      background( 0 );
      textSize(30);
      fill(255, 217, 23 );
      text("Executive  Producer", 200, 80);
      text("JAMES  L. BROOKS", 200, 150);
      text("MATT  GROENING", 200, 200);
      text("SAM  SIMON", 200, 250); 
      
    }else if (seg >550 && seg <= 650){
      background( 0 );
      textSize(30);
       text("Starring", 200, 100); 
       text("DAN  CASTELLANETA", 200, 150);
       
     }else if (seg >650 && seg <= 750){
      background( 0 );
      textSize(30);
       text("JULIE  KAVNER", 200, 150);
     
   }else if (seg >750 && seg <= 850){
      background( 0 );
      textSize(30);
       text("NANCY  CARTWRIGHT", 200, 150);
     
   }else if (seg >850 && seg <= 950){
      background( 0 );
      textSize(30);
       text("YEARDLEY  SMITH", 200, 150);
     
   }else if (seg >950 && seg <= 1050){
      background( 0 );
      textSize(30);
       text("HANK  AZARIA", 200, 150);
     
   }else if (seg >1050 && seg <= 1150){
      background( 0 );
      textSize(30);
       text("and", 200, 130);
       text("HARRY  SHEARER", 200, 180);
     
   }else if (seg >1150 && seg <= 1250){
      background( 0 );
      textSize(30);
       text("Music by", 200, 130);
       text("ALF CLAUSEN", 200, 180);
      
    }else if (seg >1250 && seg <= 10050){
      background( 0 );
       background( 0 );
      textSize(100);
       text("FIN", 200, 200);
     }
  
    
    }
}
