void setup() {  //"configuracion"
  size( 400, 400 );
  colorMode(HSB, 360, 100, 100);
  background( 50 );
 
}

void draw() {  //"dibujar"

strokeWeight(2);

//println(mouseX+"X"+","+mouseY+"Y"); //ver coordenadas 

 rectMode(CENTER); //rectangulos guias 

// guias 

ellipse(200,200,300,300);

//triangle(200, 50, 73, 280, 326, 280); //abajo

//triangle(200, 350, 72, 123, 327, 123 );// sobre

//rombos

strokeWeight(2);
stroke(206,1,1);

fill(0, 100, 100);//rojo
quad(200, 50, 240, 125, 200, 200, 158, 125); //N
fill(60, 100, 100);//amarillo
quad(240, 123, 327, 123, 283, 200, 200, 200); // NE
fill(120, 100, 100);//verde
quad(200, 200, 283, 200, 326, 280, 240, 280); //SE
fill(180, 100, 100);// cian
quad(200, 200, 240, 280, 200, 350, 160, 280 ); // S
fill(240, 100, 100);// azul
quad(115, 200, 200, 200, 160, 280, 73, 280); //SO
fill(320, 100, 100);// magenta
quad(73, 123, 160, 123, 200, 200, 115, 200); // NO


// triangulos 

noStroke();

fill(30, 100, 100);
triangle(200, 50, 327, 123, 240, 125);// NE
fill(90, 100, 100);
triangle(327, 123, 326, 280, 283, 200);// E
fill(150, 100 ,100);
triangle(326, 280, 200, 350,240, 280);// SE
fill(210, 100, 100);
triangle(200, 350, 73, 280, 160, 280);// SO
fill(270, 100, 100);
triangle(73, 280,73, 123, 115, 200);// O
fill(330, 100, 100);
triangle(73, 123, 200, 50, 160, 123);// NO


//sombras

 stroke(0);
 strokeWeight(1);

fill(0, 100, 80);//rojo
triangle(160, 123, 200, 50, 200, 200);
fill(60,100,80);//amarillo
triangle(200, 200, 327, 123, 283, 200);
fill(120, 100, 80);//verde
triangle(200, 200, 326, 280, 240, 280);
fill(180, 100,70);//cian
triangle(160, 280, 200, 200, 200, 350);
fill(240, 100, 60); //azul oscuro
triangle(73, 280, 200, 200, 160, 280);
fill(240,100,80);// azul
triangle(73, 280, 115, 200, 200, 200);
fill(300,100, 70);// magenta 
triangle(73, 123, 115, 200, 200, 200);


noFill();

}
