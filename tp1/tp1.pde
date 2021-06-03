/*
Ulises,Feito
tp1
Círculo cromático
*/

void setup(){
  size(400,400);
  background(255,255,255);
}
void draw(){

ellipse(200,200,226,226);

noFill();

triangle(100,150,300,150,200,312);

triangle(200,88,100,250,300,250);

//ellipse cian;
pushStyle();
fill(0,255,255);
ellipse(200,330,50,50);
popStyle();

//ellipse rojo;
pushStyle();
fill(255,0,0);
ellipse(200,67,50,50);
popStyle();

pushStyle();
fill(0);
text("Rojo",187,30);
popStyle();

//ellipse magenta;
pushStyle();
fill(255,0,255);
ellipse(80,140,50,50);
popStyle();

//ellipse amarillo;
pushStyle();
fill(255,255,0);
ellipse(320,140,50,50);
popStyle();

//ellipse verde;
pushStyle();
fill(0,255,0);
ellipse(320,260,50,50);
popStyle();

pushStyle();
fill(0);
text("Verde",355,270);
popStyle();

//ellipse azul;
pushStyle();
fill(0,0,255);
ellipse(80,260,50,50);
popStyle();

pushStyle();
fill(0);
text("Azul",20,270);
popStyle();

//ellipse violeta;
pushStyle();
fill(150,0,255);
ellipse(65,200,50,50);
popStyle();

//ellipse lima;
pushStyle();
fill(150,255,0);
ellipse(335,200,50,50);
popStyle();

//ellipse naranja;
pushStyle();
fill(255,150,0);
ellipse(270,85,50,50);
popStyle();

//ellipse fucsia;
pushStyle();
fill(255,0,150);
ellipse(130,85,50,50);
popStyle();

//ellipse azur;
pushStyle();
fill(0,150,255);
ellipse(130,315,50,50);
popStyle();

//ellipse verde cian;
pushStyle();
fill(0,255,150);
ellipse(270,315,50,50);
popStyle();
}
