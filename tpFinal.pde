
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim soundengine;
AudioSample clic, shot, fondo;

Aventura aventura;

void setup() {

  size( 800, 600 );

  surface.setTitle("Viaje en el Tiempo 2000");
  surface.setResizable(true);
  surface.setLocation(100, 100);

  aventura = new  Aventura ();
  soundengine = new Minim(this);
  clic = soundengine.loadSample("click.wav", 1024);
  shot= soundengine.loadSample("shot.wav", 1024);
  fondo = soundengine.loadSample("fondo1.wav", 1024);
  fondo.trigger();
}

void draw () {

  aventura.dibujar (shot);
}
void mousePressed() {
  aventura.mouse(clic);
}
void mouseMoved() {
  aventura.mouse_();
}
void keyPressed() {
  aventura.teclas(clic);
}
