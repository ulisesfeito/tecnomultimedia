/*
Ulises,Feito
tp0
88268/5
*/
PImage img;

void setup() {
size(800,400);
background(123,136,170);
img = loadImage("paisaje.jpg");
}

void draw(){
strokeWeight(1);
//fondo 

//LUNA
image(img,400,0,400,500);
noStroke();
fill(254,241,232);
ellipse(200,100,30,30);

fill(35,54,7);
rect(-1,341,402,500);

//LUNA REFLEJO 
fill(242,202,115);
rect(187,180,20,120);

fill(0);
ellipse(255,185,310,30);
ellipse(20,188,310,30);

//GRIS
fill(55,45,46);
rect(-1,180,402,30);
ellipse(250,190,310,30);
ellipse(20,190,310,30);

//pino 1
fill(11,98,10);
triangle(-50, 400, 1, 80, 80, 400);

//pino2 
fill(108,70,30);
rect(100,270, 5, 100);
fill(11,98,10);
triangle(50, 280, 100, 100, 150, 280);

//pino 3
fill(11,98,10);
triangle(300, 400, 382, 20, 450, 400);


image(img,400,0,400,500);
    }
