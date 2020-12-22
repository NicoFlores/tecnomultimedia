PImage fondo;
PImage [] aliado = new PImage[12]; // --> CAMPOS DE LA CLASE

Aliado a;

void setup() {

  size(900, 500);

  fondo = loadImage ("fondoAmong.jpg");

  //arreglo cargar Sprites // --> IRIA SÓLO EN EL CONSTRUCTOR DE LA CLASE 
  //for  (int a = 1; a < 13; a = a++) {  // --> FOR COMO LO TENIAS
   for (int a = 0; a < 12; a++) {  // --> FOR CORREGIDO: el arreglo comienza en indice 0 y estaba mal la actualización.
    aliado[a] = loadImage ("walkcolor000"+ (a+1) + ".png");
  }

  a = new Aliado (width/2, 350, 100, 100, 0);
}

void draw() {

  //imagen fondo
  imageMode(CENTER);  // --> MEJOR LLAMARLO EN SETUP() SI NO VARIA EL MODO
  image(fondo, width/2, height/2, width, height ); 

  //aliado
  a.dibujar();
}

void keyPressed() {
  //llamar a los métodos del objeto
  a.caminarIzquierda();
  a.caminarDerecha();
}
