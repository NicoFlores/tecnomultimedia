class Contador{

  // --------------------------CAMPOS---------------------------
  // (variables) #propiedes
  float x, y;
  float alto, ancho;
  color consola, texto;
  PFont letras;
  int n;
  String [] saludo = new String [3], orden = new String [4];
  
  
  
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
      
     //texto de la consola segun el estado
      saludo[0] ="Un virus a ingresado al sistema, debes destruirlos, cuidado con los violetas, no son virus sino portadores de datos del sistema";
      saludo[1] ="Borraste datos importantes del sistema, quedarás atrapado en el tiempo";
      saludo[2] ="Mataste a todos los virus, tu viaje continuará";
      
     //texto de orden segun el estado   
      orden[0] ="Pulsa ESPACIO para iniciar";
      orden[1] ="Te quedan "+ n + " virus por eliminar";
      orden[2] ="Pulsa ESPACIO para volver a intentar";
      orden[3] ="Pulsa ENTER para continuar";


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
    text(saludo[0], 25, 445, width-30, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text(orden[1], width-25, height-25);

    }
}
