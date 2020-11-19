class Contador {

  float x, y;
  float alto, ancho;
  color consola, texto;
  PFont letras;
  //String n;
  int n;
  String [] saludo = new String [4], orden = new String [4], mensaje = new String [3];

  // ------------------------CONSTRUCTOR -----------------------------
  Contador() {

    x = width * 0.016 ;
    y = height * 0.73;
    alto = 140;
    ancho = width-40;
    consola = color (0, 50);
    texto = color(#0CF037);
    letras = loadFont ("letra1.vlw");//Aventura.fuente[1] ; //
    n = 0 ;

    //texto de la consola segun el estado
    saludo[0] ="Viajero, han ingresado virus al sistema debes destruirlos, cuidado con los violetas, son  portadores de datos del sistema";
    saludo[1] ="Los virus se muestran en color rojo y verde, no toques a los violetas o borrarás datos importantes del sistema";
    saludo[2] ="Borraste datos importantes del sistema, quedarás atrapado en el tiempo";
    saludo[3] ="Mataste a todos los virus, tu viaje continuará";

    //texto de orden segun el estado   
    orden[0] ="Pulsa ESPACIO para iniciar";
    orden[1] ="Haz CLIC sobre los virus malignos para eliminarlos";
    orden[2] ="Pulsa ESPACIO para volver a intentar";
    orden[3] ="Pulsa (G) para continuar con la aventura";

    //texto de ganar o perder  
    mensaje[0] ="ALERTA VIRUS";
    mensaje[1] ="GANASTE!!!";
    mensaje[2] ="FALLASTE";
  }

  // --------------------------METODOS (funciones)---------------------------

  void contar () {
    int r = 0;
    int v = 0;
    for (int i = 0; i < 5; i++) {

      if (aventura.juego.verde[i].dibujar == true) {
        v = v+1 ;
      } else if (aventura.juego.verde[i].dibujar == false) {
        v = v-1 ;
      }

      if (aventura.juego.rojo[i].dibujar == true) {
        r = r+1 ;
      } else if (aventura.juego.rojo[i].dibujar == false) {
        r = r-1 ;
      }
      n = (r + v);
      println("virus"+ n);
    }
  }

  void dibujar (int texto, int accion) {
    noStroke(); 
    fill(consola); 
    rect(width * 0.016, height * 0.73, width-40, height /100 * 23, 10); 
    //texto en consola 
    textAlign(LEFT, TOP); 
    textFont(letras, 25); 
    fill(#0CF037); 
    text(saludo[texto], width * 0.016 + 5, height * 0.73 + 5, width - (width * 0.0625), height-25); 
    textAlign(RIGHT, BOTTOM); 
    fill(#0CF037); 
    text(orden[accion], width * 0.016 + width - (width /100 * 5), height * 0.73 + (height /100 * 23) -5 );
  }

  void mensaje (int texto) {
    pushStyle(); 
    noStroke(); 
    fill(0, 150); 
    rect((width/4) * 1, (height/4) * 1, width/2, height/3, 10); 
    textAlign(CENTER, CENTER); 
    textFont(letras, 60); 
    fill(#FFEA00); 
    text(mensaje[texto], (width/4) * 1, (height/4) * 1, width/2, height/3 ); //170
    popStyle();
  }
}
