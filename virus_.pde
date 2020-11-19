class Virus {

  PImage [] virus = new PImage [3]; 
  float x, y;
  float ancho, alto;
  float dx, dy;
  int cantidad;
  boolean dibujar;

  Virus() {

    imageMode(CENTER);
    for ( int j = 0; j < virus.length; j++ )
      virus [j]  = loadImage("virus"+ j +".png");
    x= random (width);
    y= random (height);
    alto = 100;
    ancho = 100;
    dx= random (1, 3);
    dy= random (1, 3);
    dibujar = true;
    cantidad = 0;
  }

  void dibujar(int tipo) {
    if (dibujar == true) {
      noStroke();
      image( virus[tipo], x, y, ancho, alto);
      cantidad = 1 ;
    } else if (dibujar == false) {
    }
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
    if (y >(height - (height * 0.283 + alto/2))) {  //abajo
      y = height - (height * 0.283 + alto/2);
      dy= -dy;
    } else if (y < alto/2) {  //arriba
      y = alto/2;
      dy = -dy;
    }
  }

  void desaparecer(Mira puntero) {

    // desaparece el virus que fue tocado por el mouse 
    if ( puntero.x < x + ancho/2 && puntero.x > x - ancho/2 && puntero.y > y - alto/2 && puntero.y < y + alto/2 ) {

      // ayudas de consola
      println("matar");
      dibujar = false;
    } else {
      println("vivir");
    }
  }

  void perder (Mira puntero, Juego jugador) {

    if ( puntero.x < x + ancho/2 && puntero.x > x - ancho/2 && puntero.y > y - alto/2 && puntero.y < y + alto/2 ) {

      jugador.estado = "perder";
    }
  }
}
