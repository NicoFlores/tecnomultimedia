class Mira{

  // -----------------------------------------------------
  // CAMPOS (variables) #propiedes
  // Posición y tamaño
  float x, y;
  float tam;
  PImage [] mira = new PImage [2];
  
  // -----------------------------------------------------
  // CONSTRUCTOR > metodo/funcion inicial (el "setup" del objeto)
    
    Mira() {
  
    // inicializar posicion y tamaño mediante parámetros
    imageMode(CENTER);
    for ( int j = 0; j < mira.length ; j++ )
    mira [j]  = loadImage("mira"+ j +".png");
    
    x = width/2;
    y = height/2;
    tam = 100;
    
    }


// ------------------------METODOS (funciones)-----------------------------
  
  
  //  #acciones
  
    void dibujar() {
   
     if (mousePressed == true) {
     image( mira[1] , mouseX, mouseY, tam, tam);
     
   } else {
      
       image( mira[0] , mouseX, mouseY, tam, tam);
     }
   }

    void tirar(Virus[] objetivo) {

      for ( int o = 0; o < objetivo.length; o++ ) {
        strokeWeight(10);
        fill(#05EAFC);
        line(x, y, objetivo[o].x, objetivo[o].y);
} 
   
    }
     
}    
     
   
     
   
   
   
   
  
  
