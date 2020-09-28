PImage fondo;
PImage [] aliado = new PImage[12];

Aliado a;

void setup() {

  size(900, 500);

fondo = loadImage ("fondoAmong.jpg");
  
  //arreglo cargar Sprites
  for  (int a = 1; a < 13; a = a++){ 
  aliado[a] = loadImage ("walkcolor000"+ a + ".png"); 
  }

  a = new Aliado (width/2, 350, 100, 100, 0);

}

void draw() {
  
  //imagen fondo
  imageMode(CENTER);
  image(fondo, width/2, height/2, width, height ); 
  
  //aliado
  a.dibujar();

}

void keyPressed(){
  //llamar a los métodos del objeto
  a.caminarIzquierda();
  a.caminarDerecha();  
}
  
