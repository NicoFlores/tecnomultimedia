class Virus {
  
  PImage [] virus = new PImage [3]; 
  float x, y;
  float ancho , alto;
  float dx, dy;
  int i;
  
  Virus() {
    
    imageMode(CENTER);
    for ( int j = 0; j < virus.length ; j++ )
    virus [j]  = loadImage("virus"+ j +".png");
    x= random (width);
    y= random (height);
    alto = 100;
    ancho = 100;
    dx= random (1, 4);
    dy= random (1, 4);
    
}

  void dibujar(int tipo, boolean aparecer) {
    if(aparecer == true)
    noStroke();
    image( virus[tipo] , x, y, ancho, alto);
  }
  
  void mover() {
    x=x+dx;
    y=y+dy;
  }
  void rebotar() {
    if (x> (width - ancho/2)) {  //derecha
      x = width - ancho/2;
      dx = -dx;
    } else if (x < ancho/2) {  //izquierda
      x = ancho/2;
      dx = -dx;
    }
    if (y >(height - (170 + alto/2))) {  //abajo
      y = height - (170 + alto/2);
      dy= -dy;
    } else if (y < alto/2) {  //arriba
      y = alto/2;
      dy = -dy; 
    }
  }

// ------------------------------- COLISIONES ---------------------------------------

// INTENTO DE COLISION EFECTIVA CON VIRUS

void desaparecer(Mira puntero) {
  
  line(x, y, puntero.x, puntero.y );
//  // desaparece el virus que fue tocado por el muose 
//  //if ( puntero.x > x + ancho/2 && puntero.x < x - ancho/2 && puntero.y > y - alto/2 && puntero.y < y + alto/2 ){
  
//  if ( mouseX > x + ancho/2 && mouseX < x - ancho/2 && mouseY > y - alto/2 && mouseY < y + alto/2 ){  
    
//    println("matar");
    
  }
}
  
 
  
