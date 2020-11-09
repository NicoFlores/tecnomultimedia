class Fondo {

  
  int x, y, arcoiris;
  float distancia, ancho, alto ;

  Fondo() {
    colorMode(HSB, 360, 100, 100, 100);
  }

  void dibujar() {

    background(0);
    distancia = dist(width/2, height/2, mouseX, mouseY);
    arcoiris = int(distancia);
    map( arcoiris, 0, 280, 0, 360 );
    ancho = map(mouseX, 0, width, 0, 40 );
    alto = map(mouseY, 0, height, 0, 40 );
    noStroke();
    for (int y = 0; y <= height; y = y+15) {
      for (int x = 0; x <= width; x = x+15) {
        fill(arcoiris, 75, 75, 70);
        ellipse(x, y, ancho, alto);
      }
    }
  }
}
