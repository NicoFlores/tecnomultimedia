
import processing.sound.*;



Aventura aventura;

void setup() {

  size( 800, 600 );

  surface.setTitle("Viaje en el Tiempo 2000");
  surface.setResizable(true);
  surface.setLocation(100, 100);

  aventura = new  Aventura (this);
  
}

void draw () {

  aventura.dibujar ();
}
void mousePressed() {
  aventura.mouse();
}
void mouseMoved() {
  aventura.mouse_();
}
void keyPressed() {
  aventura.teclas();
}
