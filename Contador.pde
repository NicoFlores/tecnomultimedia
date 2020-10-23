class Contador{

  // --------------------------CAMPOS---------------------------
  // (variables) #propiedes
  float x, y;
  float alto, ancho;
  color consola, texto;
  PFont letras;
  int n;
  
  
  
  // ------------------------CONSTRUCTOR -----------------------------
  // metodo/funcion inicial (el "setup" del objeto)
    
    Contador() {
    
    x = 20;
    y = 440;
    alto = 140;
    ancho = width-40;
    consola = color (0, 50);
    texto = color(#0CF037);
    letras = loadFont ("letra1.vlw");
    n = 20;
  }

  // -----------------------METODOS-----------------------------
  // (funciones) #acciones
  // dibujar()
  // rectMode(CORNER);
    
    void dibujar () {
    
    noStroke();
    fill(consola);
    rect(x, y, ancho, alto, 10);
    //texto en consola 
    textAlign(LEFT, TOP);
    textFont(letras, 25);
    fill(#0CF037);
    text("Un virus a ingresado al sistema, debes destruirlos, cuidado con los violetas, no son virus sino portadores de datos del sistema", 25, 445, width-30, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Te quedan "+ n + " virus por eliminar", width-25, height-25);

    }

  // METODOS para KeyPressed()
  // moverIzq()
  // --mueve al personaje hacia la izquierda con la flecha correspondiente
  //
  // moverDer()
  // --mueve al personaje hacia la derecha con la flecha correspondiente
  //
  // saltar()
  // --mueve el personaje hacia arriba para evitar las descargadas
  //
  // Parar()
  // --el personaje congela el tiempo y puede subir a portal
}
