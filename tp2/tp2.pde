//Ulises,Feito
//tp2
//Ilusión Óptica Interactiva
//lik a video  https://www.youtube.com/watch?v=ejh6B2L-huI&ab_channel=ulisesfeito
float rot;
float x, y;
PImage img;

void setup(){
  size(800,400);
  img = loadImage("ilusion.jpg");
  rectMode(CENTER);
  noStroke();
  rot = radians(0);

 }
void draw(){
 background(0);
 
 x= width;
 y= x/ sqrt(2);
 translate(width/4, height/2);
 
      
for(int i=0; i<100; i++){
  pushMatrix();
 //color
 fill(i*10,10-i*25,15-i*10); 
 rotate( rot );   
 ellipse(0, 0, x,x);
 fill(0);
 rect(0, 0, y,y);
 x=y;
 y=x/sqrt(2);

 popMatrix();
 
 //velocidad 
rot+=-0.0001;
if(mousePressed){
  rot+= 0.05;//Esta presionado 
  } else {
    rot+=-0.0001; //No esta presionado 
  }
  
  }
image(img,200,-200,400,400);
}
