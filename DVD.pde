class DVD {
  
  PImage logo; 
  float x, y;
  int tono;
  float ancho , alto  ;
  float dx= 6;
  float dy= 6;
  float cambio;

  DVD(int tono_) {
    colorMode(HSB, 360, 100, 100, 100);
    imageMode(CENTER);
    logo = loadImage("DVD.png");
    x= random(width);
    y= random(height);
    alto = 100;
    ancho = 200;
    tono= tono_;
    cambio = random (1, 6); 
}

  void dib() {
    noStroke();
    fill(tono, 100, 100, 50);
    tint(tono, 100, 100, 100);
    ellipse(x, y, ancho, alto);
    image(logo, x, y, ancho *.65, alto *.65);
  }
  void move() {
    x=x+dx;
    y=y+dy;
  }
  void reb() {
    if (x> (width - ancho/2)) {  //derecha
      x = width - ancho/2;
      dx = -dx;
    } else if (x < ancho/2) {  //izquierda
      x = ancho/2;
      dx = -dx;
    }
    if (y >(height - alto/2)) {  //abajo
      y = height - alto/2;
      dy = -dy;
    } else if (y < alto/2) {  //arriba
      y = alto/2;
      dy=-dy;  //bug
    }
  }


// intento de cambio de tono 
//void tono() {
//    if (x> (width - ancho/2)) {  //derecha
//      x = width - ancho/2;
//      tono = int(cambio)*60;
//    } else if (x < ancho/2) {  //izquierda
//      x = ancho/2;
//      tono = int(cambio)*60;
//    }
//    if (y >(height - alto/2)) {  //abajo
//      y = height - alto/2;
//      tono = int(cambio)*60;
//    } else if (y < alto/2) {  //arriba
//      y = alto/2;
//      tono = int(cambio)*60;
//    }
//  }

}
