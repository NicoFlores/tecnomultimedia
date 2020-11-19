
class Aventura {
  // --------------------------PROPIEDADES (variables)---------------------------

  String estado;   // estado
  Juego juego ;

  //ARREGLOS

  //fuentes
  PFont [] fuente = new PFont [5];

  //imagenes fondo
  PImage [] base = new PImage[7]; 

  //textos consola
  String [] consola = new String[13]; 
  String [] indicador = new String[8]; 
  String [] dialogo = new String[2];

  //botones flotantes
  PImage [] cientificos = new PImage[2];
  PImage [] inventos = new PImage[4];

  //variables
  int relleno;
  int letra;
  float matiz = 0;
  PImage rayo, exploAC, exploDC, Portal, error, PortalC;
  
  //sonido
  SoundFile clic, shot, fondo, bobina;


  // ---------------------CONSTRUCTOR (setup del objeto-----------------------------
  Aventura(PApplet MiApp_) {

// sonido
    bobina = new SoundFile (MiApp_, "electricidad.wav");
    clic = new SoundFile (MiApp_, "click.wav");
    shot= new SoundFile (MiApp_, "shot.wav");
    fondo = new SoundFile (MiApp_, "fondo1.wav");
    fondo.loop();

    estado = "inicio";
    juego = new Juego();

    // CARGAR ARREGLOS 

    rayo = loadImage("rayo.png");
    exploAC = loadImage("explo2.png");
    exploDC = loadImage("explo1.png");
    Portal = loadImage("fondoX.png");
    PortalC = loadImage("portalCalle.png");
    error = loadImage("error.jpg");

    //fuentes 

    for (int i=0; i<5; i++) {
      fuente[i] = loadFont ("letra"+i+".vlw");
    }

    //fondos
    for (int f=0; f<7; f++) {
      base[f] = loadImage ("fondo"+f+".jpg");
    }

    //cientificos
    for (int c=0; c<2; c++) {
      cientificos[c] = loadImage ("cientifico"+c+".png");
    }

    //inventos
    for (int c=0; c<4; c++) {
      inventos[c] = loadImage ("invento"+c+".png");
    }

    //dialogos 
    dialogo[1] = "Un viajero del tiempo, eso es imposible, y de ser verdad, estarías poniendo en riesgo a todo el universo, menos mal que yo tengo la energía necesaria para reactivar tu portal.\n\nPero ya que estás aquí, que te parece probar mi bombilla, puedes elegir entre probarla o volver a casa ahora mismo.";
    dialogo[0] = "Hola viajero del tiempo, tu presencia aquí pone en riesgo al universo, te ayudaré a volver a casa, podriamos probar con mi modelo de electricidad sin cables.\n\nYa que estás aquí, que te parece probar mi bobina y alimentar tu portal, puedes elegir entre probarla o una activacion con cableado de AC.";

    //consola
    //pasado
    consola[0] = "Hola viajero, listo para un aventura en el tiempo, deberas elegir a donde deseas ir , PASADO o FUTURO";
    consola[1] = "Haz llegado a 1880 y solo dos lugares tienen la tecnología necesaria para abrir el portal de vuelta, la casa de THOMAS EDISSON y el laboratorio de NIKOLA TESLA.";
    consola[2] = "Bienvenido al laboratorio de NIKOLA TESLA, el inventor de la AC, prueba usar su energía estable para reactivar el portal";
    consola[3] = "Ahora estás en la casa de THOMAS EDISSON, él es conocido por no tener un muy buen humor, intenta agradarle o no molestarlo demasiado.";
    consola[4] = "NIKOLA TESLA quiere demostrarte toda la potencia de la energia alterna, pruebala y podras regresar.";
    consola[5] = "\n\n---------------------Viaje en el Tiempo 2000---------";
    consola[6] = "THOMAS EDISSON es conocido por inventar la bombilla, mira que inovación tiene para mostrarte en su invento.";
    //futuro                      
    consola[7] = "Por falta de energia has caido en el 2020, un extraño virus tiene a toda la población en casa, corres peligro de entontrarte con tu YO del futuro y el portal solo puede realizar un viaje.";
    consola[8] = "El portal está reparado, pero solo resitirá el viaje de regreso, debes volver y alertar a todos sobre este virus, BUENA SUERTE VIAJERO.";
    consola[9] = "La POLICIA te ha detenido por no llevar barbijo, el virus podría estar en cualquer parte, debes elegir entre CORRER o DEJAR QUE TE DETENGAN";
    consola[10] = "El portal ahora tiene carga para un viaje de regreso, no dejes que la policia te atrape, BUENA SUERTE VIAJERO.";
    consola[11] = "La POLICIA quiere enviarte de vuelta a casa o llevarte a prisión y un portal aparece sorpesivamente en la calle entra lo antes posible.";
    consola[12] = "";

    //indicador
    //cliiquea sobre tu opcion 
    indicador[0] = "Cliquea sobre tu opción";
    indicador[2] = "Mueve el CURSOR fuera de la BOBINA";
    indicador[3] = "Cliquea sobre la BOMBILLA";
    indicador[4] = "Mueve el CURSOR fuera de la BOBINA";
    indicador[5] = "Pulsa ENTER para volver al inicio";
    //futuro
    indicador[6] = "Pulsa (F) reparar el portal o (S) quedarte en el 2020";
    indicador[7] = "Pulsa (R) correr o (T) cooperar con la policía";
  }

  //-----------------------------FUNCIONES GENERALES A METODOS-------------------------------------------------

  boolean botonCuadrado(float xBoton, float yBoton, float ancho, float alto) {

    if (mouseX > xBoton && mouseX < (xBoton + ancho) && mouseY > yBoton && mouseY < (yBoton + alto)) {
      return true;
    } else {
      return false;
    }
  }

  boolean botonCircular( float xBoton, float yBoton, float radio ) {
    if ( dist(mouseX, mouseY, xBoton, yBoton ) < radio ) {
      return true;
    } else {
      return false;
    }
  }

  void creditos(int x, int y ) {

    pushStyle();
    textAlign(RIGHT, TOP);
    textFont(fuente[2], 45);
    fill(255);
    text("Realizacíon \nProducción \n Coordinación \nImagenes \nTipografías \n\nSoporte ", x, y );
    textAlign(LEFT, TOP);
    textFont(fuente[3]);
    fill(255);
    text("Nico Flores & Clara Fallesen\nTecnoMultimedia1\nMatias Jauregui Lorda\nGoogle Images\nDaFont\nProcessing Fundation\nProcessing Fundation", x, y );
    popStyle();
  }

  void BotonCuadroTexto (String texto, int letra, int relleno, float  CBX, float CBY ) {
    pushStyle();

    //cuadro
    rectMode(CORNER);
    strokeWeight(2);
    stroke(0);
    fill(relleno);
    rect( CBX, CBY, 145, 40); //pasado

    //texto 
    textAlign(CENTER, CENTER);
    textFont(fuente[0], 35);
    fill(letra);
    text(texto, CBX + 145/2, CBY + 20 );

    popStyle();
  }

  void dialogo (float textX, float textY, int texto) {
    pushStyle();

    noStroke();
    fill(0, 200);
    rect(textX, textY, 400, 200, 10);  
    textAlign(LEFT, TOP);
    textFont(fuente[1], 16.5);
    fill(255);
    text(dialogo[texto], textX+10, textY+10, 380, 180); //170

    popStyle();
  }

  void pantallaConsola (int imagenBase, float tinte, float opacidadTinte, float XConsola, float YConsola, int textoConsola, int orden) {

    pushStyle();

    imageMode(CORNER);
    tint( tinte, opacidadTinte  );
    image( base[imagenBase], 0, 0, width, height);

    //consola inicio
    noTint();
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(XConsola + (width * 0.025), YConsola, width - (width * 0.05), height /100 * 23, 10);   

    //texto en consola 
    textAlign(LEFT, TOP);
    textFont(fuente[1], 23);
    fill(#0CF037);
    text(consola[textoConsola], XConsola + (width / 100 * 3.125), YConsola + 5, width - (width * 0.0625), height-25);
    textAlign(RIGHT, BOTTOM);
    text(indicador[orden], XConsola + width - (width /100 * 3.8), YConsola + (height /100 * 23) -5 );

    popStyle();
  }

  //METODOS DE AVENTURA 

  void dibujar (AudioSample shot) {
    //pantalla (int imagenBase, float tinte, float opacidadTinte, float posXConsola, float posYConsola,int textoConsola, int orden)
    //botonCuadrado (float xBoton, float yBoton, float ancho, float alto)
    //BotonCuadroTexto (String texto, int letra, int relleno, float  CBX, float CBY )

    if ( estado.equals("inicio") ) {

      pushStyle();
      bobina.stop();
      pantallaConsola(0, 255, 255, 0, height * 0.73, 0, 0);   
      //Boton pasado
      BotonCuadroTexto("PASADO", letra, relleno, width * 0.05, height* 0.53);

      if (botonCuadrado (width * 0.75, height* 0.53, 145, 40)) {
        relleno = 255;
        letra = 0;
      } else {
        relleno = 0;
        letra = 255;
      }

      //Boton futuro
      BotonCuadroTexto("FUTURO", letra, relleno, width * 0.75, height* 0.53);

      if (botonCuadrado (width * 0.05, height* 0.53, 145, 40)) {
        relleno = 255;
        letra = 0;
      } else {
        relleno = 0;
        letra = 255;
      }
      popStyle();
    } else if ( estado.equals("pasado") ) { //evento PASADO

      pushStyle();

      pantallaConsola(1, 150, 125, 0, height * 0.73, 1, 0);    

      imageMode(CORNER);
      //Tesla 
      image(cientificos[0], width/5, height/5, 150, 200 );
      //Edisson
      image(cientificos[1], width/4 * 2, height/5, 280, 200 );

      popStyle();
    } else if ( estado.equals("PEdisson") ) { 

      pushStyle();

      pantallaConsola(3, 255, 255, 0, 10, 3, 0);

      //Edisson
      imageMode(CORNER);
      image(cientificos[1], width - 430, height - 300, 420, 300 );

      dialogo (20, height * 0.272, 1);

      ellipse(width/8, height/4*3, 90, 90);
      imageMode(CENTER);
      image(inventos[3], width/8, height/4 *3, 100, 100);    //DC
      image(inventos[2], width/8*3, height/4 *3, 80, 100);   //bombilla

      popStyle();
    } else if ( estado.equals("PTesla") ) { 

      pushStyle();

      pantallaConsola(2, 255, 255, 0, 10, 2, 0);

      //Tesla
      imageMode(CORNER);
      image(cientificos[0], 0, height - 300, 300, 400 );

      dialogo (width * 0.475, height * 0.6545, 0);

      ellipse(width/8*6, height/4 *2, 90, 90);
      imageMode(CENTER);
      image(inventos[1], width/8*6, height/4 *2, 100, 100);    //AC
      image(inventos[0], width/8*4, height/4*2, 100, 100);   //bobina
      popStyle();
    } else if ( estado.equals("Bobina") ) { 

      pushStyle();
      pantallaConsola(2, 150, 125, 0, 10, 4, 2);

      //Tesla
      imageMode(CORNER);
      image(cientificos[0], 0, height - 300, 300, 400 );
      //bobina 
      imageMode(CENTER);
      image(inventos[0], width/8*4, height/4*2, 100, 100);
      popStyle();
    } else if ( estado.equals("rayos") ) { 

      pushStyle();
      pantallaConsola(2, 150, 125, 0, height * 0.73, 5, 5);

      //interaccion rayos
      imageMode(CENTER);
      tint(255, 150);
      //rayos mouse
      image(rayo, mouseX, mouseY, 300, 300);   
      //bobina
      image(inventos[0], mouseX, mouseY, 100, 100);  

      //Tesla
      noTint();
      imageMode(CORNER);
      image(cientificos[0], 0, height - 300, 300, 400 );

      creditos(width/2, height/10);
      popStyle();
    } else if ( estado.equals("AC") ) { 

      pushStyle();
      pantallaConsola(2, 150, 125, 0, height * 0.73, 5, 5);

      imageMode(CENTER);
      tint(150, 255);
      image(exploAC, width/2, height*.30, 1200, 600);
      image(Portal, width/2, height* .37, 1100, 750);

      //Tesla
      noTint();
      imageMode(CORNER);
      image(cientificos[0], 0, height - 300, 300, 400 );

      creditos(width/2, height/10);
      popStyle();
    } else if ( estado.equals("Bombilla") ) { 

      pushStyle();
      pantallaConsola(3, 150, 255, 0, 10, 6, 3);

      //Edisson
      colorMode(HSB, 360, 100, 100);
      fill(matiz, 100, 100, 75);
      quad(width * 0.2825, height * 0.5433, width * 0.3575, height * 0.55, width * 0.35125, height * 0.7433, width * 0.2825, height * 0.7433);
      quad(width * 0.4375, height * 0.55166, width * 0.5, height * 0.56, width * 0.5, height * 0.74833, width * 0.44, height * 0.7533);
      quad(width * 0.86875, height * 0.56166, width * 0.9275, height * 0.5666, width * 0.93125, height * 0.77, width * 0.865, height * 0.767);
      noTint();
      imageMode(CORNER);
      image(cientificos[1], width - 430, height - 300, 420, 300 );
      //bombilla
      imageMode(CENTER);
      tint(matiz, 100, 100, 75);
      image(inventos[2], width - 328, height - 70, 80, 100); 

      //texto en consola 
      textFont(fuente[1], 23);
      textAlign(LEFT, BOTTOM);
      fill(#0CF037);
      text("Pulsa ENTER para volver al inicio", 25, height-25);  

      popStyle();
    } else if ( estado.equals("DC") ) { 

      pushStyle();

      pantallaConsola(3, 150, 125, 0, 10, 5, 5);

      imageMode(CENTER);
      tint(150, 255);
      image(exploDC, width*.35, height*.65, 1200, 600);
      image(Portal, width*0.35, height* .65, 1000, 700);

      //Edisson
      noTint();
      imageMode(CORNER);
      image(cientificos[1], width - 430, height - 300, 420, 300 );

      creditos(width/3, height/3);

      popStyle();

      //-----------------------------------------------------------------!!!!!!!!!!!!JUEGO!!!!!!!!--------------------------------------------
    } else if (estado.equals("juego")) {

      pushStyle();

      juego.dibujar(shot);

      popStyle();
    } else if ( estado.equals("futuro") ) {  

      pushStyle();

      pantallaConsola ( 4, 255, 255, 0, height * 0.73, 7, 6);

      // prueba de color
      imageMode(CENTER);
      image(error, width/2, height/3*1, width/2, height/2 );

      popStyle();
    } else if ( estado.equals("fix") ) {  

      pushStyle();

      pantallaConsola ( 4, 255, 255, 0, height * 0.73, 8, 5);

      imageMode(CENTER);
      tint(200, 255);
      image(Portal, width/8*4.15, height/3 + 15, 1100, 750);  

      creditos(width/2, height/10);

      popStyle();
    } else if ( estado.equals("stay") ) {  

      pushStyle();

      pantallaConsola ( 5, 255, 255, 0, height * 0.73, 9, 7);

      popStyle();
    } else if ( estado.equals("run") ) {  

      pushStyle();   

      pantallaConsola ( 4, 255, 255, 0, height * 0.73, 10, 5);

      imageMode(CENTER);
      tint(200, 255);
      image(Portal, width/8*4.15, height/3 + 15, 1100, 750);  

      creditos(width/2, height/10);

      popStyle();
    } else if ( estado.equals("trans") ) {  

      pushStyle(); 

      pantallaConsola ( 6, 200, 255, 0, height * 0.73, 11, 5);

      imageMode(CENTER);
      tint(230, 255);
      image(PortalC, width/8, height/5*2 - 25, 200, 400);  

      creditos(width/2, height/10);

      popStyle();
    }
  }
  //-----------------------------------------------------!!!!!!!!!!!!!!!!!!!sonido!!!!!!!!!!!!!!!!!!!------------------------------

  //Funciones de interaccion-----------------------------------------
  void mouse() { //mouse clicked
    // evento CLIC A PASADO
    juego.clic();
    if (botonCuadrado(width * 0.05, height* 0.53, 145, 40) && estado.equals("inicio")) { 
      clic.play();
      estado = ("pasado");
    } 

    //evento CLIC A FUTURO
    if (botonCuadrado(width * 0.75, height* 0.53, 145, 40) && estado.equals("inicio")) {
      clic.play();
      estado = ("juego");

      // evento CLIC TESLA
    } else if (botonCuadrado(width/5, height/5, 150, 200 ) && estado.equals("pasado")) { 
      clic.play();
      estado = ("PTesla");

      //evento CLIC EDISSON
    } else if (botonCuadrado( width/4 * 2, height/5, 280, 200) && estado.equals("pasado")) {
      clic.play();
      estado = ("PEdisson");
    }
    // evento CLIC BOMBILLA
    if (botonCuadrado( width/8*3-40, height/4 *3-50, 80, 100) && estado.equals("PEdisson")) { 
      clic.play();
      estado = ("Bombilla");

      //evento CLIC DC
    } else if ( botonCircular(width/8, height/4*3, 45) && estado.equals("PEdisson")) { 
      clic.play();
      estado = ("DC");

      //evento CLIC BOMBILLA CAMBIO DE COLOR
    } else if (botonCuadrado( width - 368, height - 120, 80, 100) && estado.equals("Bombilla")) {
      clic.play();
      estado = ("Bombilla");
      matiz= random(0, 360);
    }
    //evento CLIC BOBINA
    if (estado.equals("PTesla")&& dist(mouseX, mouseY, width/8*4, height/4*2) <= 45) {  
      clic.play();
      estado = ("Bobina");

      //evento CLIC AC
    } else if ( botonCircular (width/8*6, height/4 *2, 90/2) && estado.equals("PTesla")) { 
      clic.play();
      estado = ("AC");
    }
  }

  void mouse_() {
   // mouse moved
    //evento PRESIONAR SOBRE BOBINA
    if (estado.equals("Bobina")&& !botonCircular(width/8*4, height/4*2, 90/2)) { 
      bobina.loop();
      estado = ("rayos");
    }
  }
  void teclas(AudioSample s) {
    juego.teclas(s);
    if (keyCode == ENTER && estado.equals("rayos")||keyCode == ENTER && estado.equals("AC")||keyCode == ENTER && estado.equals("DC")||
      keyCode == ENTER && estado.equals("Bombilla")||keyCode == ENTER && estado.equals("fix")||keyCode == ENTER && estado.equals("run")||
      keyCode == ENTER && estado.equals("trans")) {
      s.trigger();
      estado = ("inicio");
    }
    //evento F reparar portal
    if ( key == 'f' && estado.equals("futuro") || key == 'F' && estado.equals("futuro") ) {
      s.trigger();
      estado = "fix";
    }

    //evento S quedarte en el 2020
    if ( key == 'S' && estado.equals("futuro") || key == 's' && estado.equals("futuro") ) {
      clic.play();
      estado = "stay";
    }

    //evento R correr
    if ( key == 'R' && estado.equals("stay") || key == 'r' && estado.equals("stay") ) {
      clic.play();
      estado = "run";

      //evento T transbordador
    } else if ( key == 'T' && estado.equals("stay") || key == 't' && estado.equals("stay") ) {
      clic.play();
      estado = "trans";
    }
  }
}
