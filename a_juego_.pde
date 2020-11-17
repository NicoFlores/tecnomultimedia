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

    estado = "menu";    // estado inicial

    // inicializar los objetos: 

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

  void mover() {

    for ( int i = 0; i < 5; i++ ) {
      rojo[i].mover();
      rojo[i].rebotar();

      verde[i].mover();
      verde[i].rebotar();

      violeta[i].mover();
      violeta[i].rebotar();

      consola.contar();
    }
    if (estado.equals("jugar") && consola.n == -10) {

      for (int i = 0; i < 5; i++) {
        verde[i].dibujar = true;
        rojo[i].dibujar = true;
        estado = "ganar";
      }
    }
  }

  void dibujar(AudioSample shot) {

    if (estado.equals ("menu")) {

      error.dibujar();

      consola.dibujar(0, 0);

      consola.mensaje(0);
    }

    if (estado.equals ("jugar")) {
      mover();

      consola.n =0;

      error.dibujar();

      for ( int i = 0; i < 5; i++ ) {

        //dibuja virus
        rojo[i].dibujar(2);   //enemigo

        verde[i].dibujar(0);  //enemigo

        violeta[i].dibujar(1);  //amigo
      }  

      mira.dibujar(shot);

      consola.dibujar(1, 1);
    }

    if (estado.equals ("ganar")) {

      error.dibujar();

      consola.dibujar(3, 3);

      consola.mensaje(1);
    }

    if (estado.equals ("perder")) {

      error.dibujar();

      consola.dibujar(2, 2);

      consola.mensaje(2);
    }
  }

  void clic () {

    for ( int i = 0; i < 5; i++ ) {

      rojo[i].desaparecer (mira);

      verde[i].desaparecer (mira);

      violeta[i].perder (mira, aventura.juego);
    }
    
  }

  void teclas (AudioSample s) {

    if (estado.equals("menu") && key == ' ') {
      s.trigger();
      estado = "jugar";
    }

    if (estado.equals("perder") && key == ' ') {
      s.trigger();
      estado = "jugar";

      for ( int i = 0; i < 5; i++ ) {

        rojo[i].dibujar = true;   //enemigo

        verde[i].dibujar= true;  //enemigo

        violeta[i].dibujar= true;  //amigo
      }
    }

    if (estado.equals("ganar") && key == 'g'|| estado.equals("ganar") && key == 'G') {
      s.trigger();
      aventura.estado = "futuro";
    }
  }
}
