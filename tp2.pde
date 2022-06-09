//Ulises,Feito
//tp2
//Ilusión Óptica Interactiva
//lik a video  https://www.youtube.com/watch?v=FKcDX2lSCVE&ab_channel=UlisesFeito
float rot;
float x, y;


void setup(){
  size(600,600);
  rectMode(CENTER);
  noStroke();
  rot = radians(0);

 }
void draw(){
 background(0);
 x= width;
 y= x/ sqrt(2);
 translate(width/2, height/2);
      
      
//zoom 
 float scaleZoom = map( mouseX,0,width,1.1, 10);
 scale(scaleZoom);


for(int i=0; i<100; i++){
  pushMatrix();
 //color
 fill(i*10,255-i*25,255-i*10); 
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

}
