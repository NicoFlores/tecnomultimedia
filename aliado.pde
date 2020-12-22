class Aliado {

  //CAMPOS (variables) propiedades 

  float x, y; 
  float ancho, alto;
  int a;

  //CONTRUCTOR 

  Aliado (float xa, float ya, float anchoa, float altoa, int aimage) {

    x = xa;
    y = ya;
    ancho = anchoa;
    alto = altoa;
    a = aimage;

    // --> ESTA BIEN ACÁ PERO LO COMENTO PORQUE LO LLAMAS DOS VECES
    //for  (int i = 1; i < 13; i = i++) { 
    //  aliado[i] = loadImage ("walkcolor000"+ i + ".png");
    //}
  }

  //METODOS (funciones) acciones

  void dibujar() {

    image(aliado[a], x, y);
  }   

  void caminarDerecha() {

    if (keyCode == RIGHT ) {
      x +=5;
      //a = a++%12; // --> OJO ESTA LINEA
      a = a+1; // --> ASI
      if (a == 12) {
        a = 0;
      }
    }
  }   
  void caminarIzquierda() {

    if (keyCode == LEFT ) {
      //}  // --> VA MAS ABAJO *
      x -=5;
      a = a++; // --> OJO ESTA LINEA
      a = a+1; // --> ASI
      if (a == 12) {
        a = 0;
      }
    }  // --> VA ACA *
  }
}
