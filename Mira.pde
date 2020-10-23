class Mira{

  // -----------------------------------------------------
  // CAMPOS (variables) #propiedes
  // Posición y tamaño
  float x, y;
  float tam;
  PImage [] reticula = new PImage [2];
  
  // -----------------------------------------------------
  // CONSTRUCTOR > metodo/funcion inicial (el "setup" del objeto)
    
    Mira() {
    pushStyle();
    // inicializar posicion y tamaño mediante parámetros

    x = width/2;
    y = height/2;
    tam = 100;
    
    //carga de las imagenes
    for (int i = 0; i > 2; i++ )
    reticula [i] = loadImage ( "mira" + i + ".png" );  
    popStyle();
    }
  // -----------------------------------------------------
  // METODOS (funciones) #acciones
  // dibujar()
   void dibujar() {
   
     if (mousePressed == true) {
     imageMode(CENTER);
     image( reticula[1] , mouseX, mouseY, tam, tam);
     
   } else {
      
       image( reticula[0] , mouseX, mouseY, tam, tam);
     }
   }
} 
   //void rojo () {
   
   //  if (mousePressed == true) {
     
     
     
     
   
     
   
   
   
   
  
  // void mouseDragged()  {
  
  //   value = value + 5;
  //if (value > 255) {
  //  value = 0;
  //}  

  // choques()
  // --lanza choques un una direccion determinada 



 
