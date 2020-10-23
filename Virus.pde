class Virus {
  
  PImage virus; 
  float x, y;
  float ancho , alto;
  float dx;
  float dy;
  int c;
  
  Virus(int c) {
    imageMode(CENTER);
    virus = loadImage("virus"+ c%3 +".png");
    x= random (width);
    y= random (height);
    alto = 100;
    ancho = 100;
    dx= random (1, 4);
    dy= random (1, 4);
    
}

  void dibujar() {
    noStroke();
    image( virus , x, y, ancho, alto);
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
      dy = -dy;
    } else if (y < alto/2) {  //arriba
      y = alto/2;
      dy=-dy; 
    }
  }
//  void mover() {
//    x=x+dx;
//    y=y+dy;
//  }
//  void reboteBajo() {
//    if (y >(height - alto/2)) {  //abajo
//      y = height - alto/2;
//      dy = -dy;
//    }

}
