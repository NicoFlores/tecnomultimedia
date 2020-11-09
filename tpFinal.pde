
Aventura aventura;

void setup() {

  size( 800, 600 );

  aventura = new  Aventura ();
  
}

void draw () {

aventura.dibujar ();


}
void mousePressed(){
aventura.mouse();
}
void mouseMoved(){
aventura.mouse_();
}
void keyPressed(){
aventura.teclas();
}

  
