class Juego {

  // --------------------------PROPIEDADES (variables)---------------------------
  
      String estado;   // estado
   
      Fondo error;     // fondo
      
      Virus[] rojo = new Virus[5];   // rojo 
      
      Virus[]verde = new Virus[5];   // verde
      
      Virus[] violeta = new Virus[5];   // violeta

      Mira mira;     // apuntador

      Contador consola;    //textos consola 
      
  // ---------------------CONSTRUCTOR (setup del objeto-----------------------------
  
      Juego() {
      
      estado = "jugar";    // estado inicial
  
  // inicializar los objetos: Viajero, Policia, Choques, Fondo;

     error = new Fondo ();

  //creo cada instancia de virus por color 
       for (int i = 0; i < 5; i++) {
     
     rojo[i] = new Virus();    // enemigo
     
     verde[i] = new Virus();   // enemigo
     
     violeta[i] = new Virus();   // amigo
  }

     mira = new Mira();   //apuntador

     consola = new Contador();   //textos consola 

      }
  // --------------------------METODOS (funciones)---------------------------
 
  // mover ()
  
  void mover() {
  
  for ( int i = 0; i < 5; i++ ) {
    rojo[i].mover();
    rojo[i].rebotar();
    rojo[i].desaparecer (mira);

    verde[i].mover();
    verde[i].rebotar();

    violeta[i].mover();
    violeta[i].rebotar();
    
    
     mira.tirar( rojo );
  }
  }
  
  // dibujar()
  
   void dibujar() {
     
   if (estado.equals ("jugar")) {
   
     error.dibujar();

  for ( int i = 0; i < 5; i++ ) {

    //dibuja virus
    rojo[i].dibujar(2, true);   //enemigo
    
    verde[i].dibujar(0, true);  //enemigo
    
    violeta[i].dibujar(1, false);  //amigo
  }  

  mira.dibujar();
  
  consola.dibujar();

 
   
 }
   }
  
  // --logicaDeEstados
  // --llamar a los metodos dibujar de mis objetos
  // --fondo.dibujar();
  // --viajero.dibujar();
  // --choques.dibujar();
  // --policia.dibujar();
  

  
}
