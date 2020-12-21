/* Introducción al DIBUJO CON PROCESSING
  
  // atributos de primitivas de dibujo
  
  noFill();  //--> SIN RELLENO
  fill( r, g, b );
  fill( valorDeGris );
  strokeWeight( valorEnPixel );  //--> GROSOR DEL BORDE
  noStroke();  //--> SIN BORDE
  stroke( r, g, b );  //--> COLOR DE LA LINEA
  stroke( valorDeGris );
*/

void setup() {  //"configuracion"
  size( 800, 800 );
  background( 13, 63, 95 );  //azul noche
}

void draw() {  //"dibujar"

  //line( x1, y1, x2, y2 );
  //HORIZONTE
  strokeWeight( 2 );
  line( 0, 600, 800, 600 );
  //PISO
  fill( 255 );
  noStroke();
  rect( 0, 600, 800, 600 );
  
  fill(0);
  point(400, 100);
  
  //arboles 
  //fill(36, 62, 7);
  
  
  
  
  fill(12, 90, 29);
  triangle(120, 170, 200, 50, 280, 170); //punta
  triangle(100, 230, 200, 100, 300, 230);
  triangle(75, 300, 200, 130, 325, 300);
  triangle(50, 380, 200, 190, 350, 370);
  triangle(20, 450, 200, 210, 380, 470);
  triangle(-20, 550, 200, 300, 420, 550); //base
  
    //arboles grande 
  fill(64, 31, 36);
  rect(750, 700, 100, 100);
  fill(33, 62, 0);
  triangle(400, 700, 900, 300, 930, 750 ); //base
  triangle(500, 500, 900, 100, 950, 550);
  triangle(650, 300, 900, 0, 1200, 280);
  
  
  /*triangle(120, 170, 200, 50, 280, 170); //punta
  triangle(100, 230, 200, 100, 300, 230);
  triangle(75, 300, 200, 130, 325, 300);
  triangle(50, 380, 200, 190, 350, 380);
  triangle(20, 470, 200, 210, 380, 470);
  triangle(-20, 550, 200, 300, 420, 550); //base
  */


// muneco con sombrero
  //ellipse( posicionEnX, posicionEnY, tamanioAncho, tamanioAlto );
  fill( 240 );  //BLANCO MARFIL para las 3 ellipses
  noStroke();
  //ellipse de arriba
  ellipse( 200, 460, 80, 80 );
  //ellipse del medio
  ellipse( 200, 530, 100, 100 );
  //ellipse de abajo
  ellipse( 200, 600, 130, 130 );
  
  //triangulo nariz
  //triangle( x1, y1, x2, y2, x3, y3 );
  fill( 232, 150, 47 );
  triangle( 210, 460, 210, 470, 240, 465 );
  
  //brazos
  strokeWeight( 6 );
  stroke( 64, 37, 17 );
  //brazo izquierdo
  line(235, 520, 280, 480);
  //mano
  line(270, 490, 260, 480);
  //brazo derecho
  line(180, 520, 160, 570);
  //mano
  line(170, 555, 186, 563);
  line(170, 555, 175, 575);
  
  //sombrero
  fill(0);
  ellipse(200, 430, 80, 10);
  rect(175, 390 ,50, 40);
  
    //ojos
  fill(0);
  ellipse(205, 450, 5, 5);
  ellipse(220, 450, 5, 5);
  
    //botones
  ellipse(215, 500, 20, 20);
  ellipse(215, 540, 20, 20);
  ellipse(215, 580, 20, 20);


 //muneco sin sombrero
fill( 240 );  //BLANCO MARFIL para las 3 ellipses
  noStroke();
  //ellipse de arriba
  ellipse( 400, 460, 80, 80 );
  //ellipse del medio
  ellipse( 400, 530, 100, 100 );
  //ellipse de abajo
  ellipse( 400, 600, 130, 130 );
  //triangulo nariz
  //triangle( x1, y1, x2, y2, x3, y3 );
  fill( 232, 150, 47 );
  triangle( 395, 460, 395, 470, 370, 465 );
  
  //botones
  fill(203,2,56);
  ellipse(380, 500, 20, 20);
  ellipse(380, 540, 20, 20);
  ellipse(380, 580, 20, 20);
  
  //gorro
   fill(219,167,24);
  triangle(375, 420, 445, 390, 450, 460);


//brazos
  //line( x1, y1, x2, y2 );
  strokeWeight( 6 );
  stroke( 64, 37, 17 );
  //brazo izquierdo
  line(420, 520, 410, 540 );
  line(410, 540, 375, 530);
  //mano
  line(390, 534, 372, 545 );
  
  //brazo derecho
  line( 360, 520, 340, 500 );
  line(340, 500, 340, 460);
  //mano
  line(340, 480, 355, 465);
  line(340, 480, 325, 465);
  
  //ojos
  fill(0);
  ellipse(380, 450, 5, 5);
  ellipse(405, 450, 5, 5);
  
  //rect( x, y, ancho, alto );  //se dibuja desde la esquina superior izquierda
  //luna
  noStroke();
  fill( 235 );  //blanco
  ellipse( 400, 150, 250, 250 );
  
  
  
}
