//Ulises,Feito
//tp0
//retrato

PImage img;

void setup(){
  size(800,400);
img = loadImage("retrato.jpg"); }


void draw(){

strokeWeight(1);
//imagen
background(111,60,60);
image(img,400,0,400,500);

//camisa 
fill(100,202,206);
ellipse (100,520, 450,300);
fill(100,202,206);
ellipse (270,520, 400,300);


//cuello
noStroke();
fill(229,150,150);
rect(130,300,120,200);
fill(0);
text(1966,175,370);

//cara
fill(229,150,150);
stroke(259,135,135);
ellipse (190, 200, 250, 295);

//ojos d
stroke(7);
fill(255);
ellipse(135,170,50,15);
fill(0);
ellipse(135,170,15,15);
fill(128,64,0);
ellipse(135,170,14,14);
fill(0);
ellipse(135,170,7,7);
fill(255);
ellipse(135,170,3,3);

//ojos i
fill(255);
ellipse(250,170,50,15);
fill(0);
ellipse(250,170,15,15);
fill(128,64,0);
ellipse(250,170,14,14);
fill(0);
ellipse(250,170,7,7);
fill(255);
ellipse(250,170,3,3);

//nariz
noStroke();
fill(259,135,135);
ellipse(190,210,26,72);
ellipse(181,235,30,23);
ellipse(200,235,30,23);

//boca
fill(245,67, 88);   
ellipse(190, 290, 70, 20);
stroke(113,24,34);
line(155,290, 224, 290);

//orejas
noStroke();
fill(229,150,150);
ellipse(70,205,40,50);
ellipse(70,225,30,30);
ellipse(310,205,40,50);
ellipse(310,225,30,30);
fill(127, 140, 141);
ellipse(65,233,7,7);
ellipse(319,233,7,7);


//pelo
fill(15,10,13);
ellipse(190,70,240,80);
ellipse(75,110,25,100);
ellipse(80,100,30,65);
ellipse(90,80,30,55);
ellipse(170,80,30,55);
ellipse(305,110,25,100);
ellipse(295,100,25,55);
ellipse(170,80,30,55);
ellipse(190,80,30,60);
ellipse(200,80,30,65);
ellipse(220,90,50,60);
ellipse(250,80,30,50);
ellipse(130,80,30,50);

//cejas
strokeWeight(5);
stroke(0);
line(110, 145, 155, 145);
line(110, 145, 105, 150);
line(225,145,270,145);
line(270,145,275,150);
}
 
