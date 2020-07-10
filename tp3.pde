//DIAGRAMA DE ESTADOS

String estado;
PImage Inicio, pasado, futuro, tesla, edisson, casaEdisson, labTesla, bombilla, bobina, alterna, continua, portalTra, portalCalle,exploDC, exploAC, rayosBobina, rayosMouse ;
PFont tiempos, consola, creditosR,creditosL, viaje ;
int cuadro, letras;
float tinte;

void setup() {
  size( 800, 600 );

  estado = "inicio";
  cuadro = 0;
  letras = 255;
  tinte = 0;
 
  //CARGA DE VARIABLES 

  //IMAGENES 
  //panatalla de inicio
  Inicio = loadImage ( "pantalla1.png" );  
  // pasado y futuro
  pasado = loadImage ( "1880.jpg" );       
  futuro = loadImage ( "2020.jpg" );
  //Tesla yEdisson pasado
  tesla = loadImage ( "Tesla.png" );
  edisson = loadImage ( "Edison.png" );
  // casas Edisson y Tesla
  labTesla = loadImage ( "labTesla.jpg" );
  casaEdisson = loadImage ( "casaEdisson.jpg" );
  //inventos
  alterna = loadImage ( "corrienteAlterna.png" );
  continua = loadImage ( "corrienteContinua.png" );
  bombilla = loadImage ( "bombilla.png" );
  bobina = loadImage ( "Bobina.png" );
  //portales
  portalCalle = loadImage ( "portalCalle.png" );
  portalTra = loadImage ( "portalTransparente.png" );
  //explociones
  exploDC = loadImage ( "explo1.png" );
  exploAC = loadImage ( "explo2.png" );
  //rayos
  rayosBobina = loadImage ( "rayos1.png" );
  rayosMouse = loadImage ( "rayos2.png" );
  
  
  // FUENTES
  tiempos = loadFont ( "Inicio.vlw" );
  consola = loadFont ( "OCRA.vlw" );
  creditosL = loadFont ("Bodoni.vlw"); 
  creditosR = loadFont ("monter.vlw");
  viaje = loadFont ("Magneto.vlw");


  // Modo de Imagen
  //imageMode(CORNER);
  //CARGA DE IMAGENES MODELO image( name, posX, posY, ancho, alto );
}

void draw() {

  //ciclo if para manejar estados
  
  // estado INICIO
  
  if ( estado.equals("inicio") ) {

    imageMode(CORNER);
    image( Inicio, 0, 0, width, 550 );

    //consola inicio
    rectMode(CORNER);
    noStroke();
    fill(100);
    rect(0, 420, width, height);
    fill(0, 50);
    rect(20, 440, width-40, 140, 10);
    //texto en consola 
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(consola);
    fill(#0CF037);
    text("Hola viajero, listo para un aventura en el tiempo, deberas elegir a donde desas ir , PASADO o FUTURO", 25, 445, width-5, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Cliquea en pantalla la opcion adecuada", width-25, height-25);

    //cuadros pasado y futuro
    rectMode(CORNER);
    strokeWeight(2);
    stroke(0);
    fill(cuadro);
    rect(40, 320, 145, 40); //pasado
    rect(600, 320, 145, 40); //futuro

    textSize(1);
    textAlign(LEFT, BOTTOM);
    textFont(tiempos);
    fill(letras);
    text("FUTURO", 600, 360);

    textSize(1);
    textAlign(RIGHT, BOTTOM);
    textFont(tiempos);
    fill(letras);
    text("PASADO", 185, 360);
    
    //cambios de color cuadros inicio
    if (mouseX > 40 && mouseX < 185 && mouseY > 320 && mouseY < 360 ||
      mouseX > 600 && mouseX < 745 && mouseY > 320 && mouseY < 360) {
      cuadro = 255;
      letras = 0;
    } else {
      cuadro = 0; 
      letras = 255;
    }
        
  } else if ( estado.equals("pasado") ) { //evento PASADO
    tint( 150, 125 );
    //pasado
    image(pasado, 0, 0, width, height ); 
    // Tesla y Edison 
    noTint();
    image(tesla, width/5, height/5, 150, 200 );
    noTint();
    image(edisson, width/4 * 2, height/5, 280, 200 ); 

    //consola 
    rectMode(CORNER);
    noStroke();
    fill(100);
    rect(0, 420, width, height);
    fill(0, 50);
    rect(20, 440, width-40, 140, 10);
    //texto en consola 
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(consola);
    fill(#0CF037);
    text("Haz llegado a 1880 y solo dos lugares tienen la tecnología necesaria para abrir el portal de vuelta, la casa de THOMAS EDISSON y el laboratorio de NIKOLA TESLA.", 25, 445, width-5, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Cliquea sobre tu opción", width-25, height-25);
    
    
  } else if ( estado.equals("PEdisson") ) {  //estado PRESENTACION EDISSSON
    
    image(casaEdisson, 0, 0, width, height ); 
    
    //consola 
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(20, 10, width-40, 140, 10);
    //texto en consola 
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(consola);
    fill(#0CF037);
    text("Haz llegado a la casa de THOMAS EDISSON, es conocido por no tener un muy buen humor, intenta agradarle o no molestarlo demasiado.", 25, 15, width-50, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Cliquea sobre tu opción", width-25, 135);
    
  //edisson
    imageMode(CORNER);
    image(edisson, width - 430, height - 300, 420, 300 );
 //dialogo
    noStroke();
    fill(0, 200);
    rect(20, 160, 400, 200, 10);  //recuadro de dialogo
    textSize(15);
    textAlign(LEFT, TOP);
    fill(255);
    text("Un viajero del tiempo, eso es imposible, y de ser verdad, estarías poniendo en riesgo a todo el universo, menos mal que yo tengo la energía necesaria para reactivar tu portal.", 25, 165, 395, height-5);
    text("Pero ya que estás aquí, que te parece probar mi bombilla, puedes elegir entre probarla o volver a casa ahora mismo.", 25, 275, 395, height-5);
    rectMode(CENTER);                   //DC
    noTint();
    fill(255);
    ellipse(width/8, height/4*3, 90, 90);
    imageMode(CENTER);
    image(continua, width/8, height/4 *3, 100, 100);    //DC
    image(bombilla, width/8*3, height/4 *3, 80, 100);   //bombilla 
    
 } else if ( estado.equals("Bombilla") ) {     //estado BOMBILLA 
  
   imageMode(CORNER);
   colorMode(HSB, 360, 100, 100);
      tint (tinte, 100, 100, 50);
   image(casaEdisson, 0, 0, width, height );
    //Bombilla
    imageMode(CORNER);
    noTint();
    image(edisson, width - 430, height - 300, 420, 300 );
    //consola
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(20, 10, width-40, 140, 10);
    //texto en consola 
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(consola);
    fill(#0CF037);
    text("THOMAS EDISSON es conocido por inventar la bombilla, mira inovación tiene para mostrarte en su invento.", 25, 15, width-50, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Cliquea sobre la BOMBILLA", width-25, 135);
   
    noTint();
    imageMode(CENTER);
    image(bombilla, 475, 525, 80, 100);    
    
     //texto en consola 
    textSize(20);
    textFont(consola);
    textAlign(LEFT, BOTTOM);
    fill(#0CF037);
    text("Pulsa ENTER para volver al inicio", 25, height-25);  
    
  } else if ( estado.equals("DC") ) {   //estado CORRIENTE CONTINUA
    background(0);
    imageMode(CENTER);
    image(exploDC, width/2, height/2 , 1200, 900);
    image(portalTra, width/2, height/2 + 15, 1100, 750);
    
    // CREDITOS 
    fill(0, 50);
    rectMode(CORNER);
    rect(0,0, width, height);
    textSize(20);
    textAlign(RIGHT, TOP);
    textFont(creditosL);
    fill(255);
    text("Realizacíon \nProducción \n Coordinación \nImagenes \nTipografías \n\nSoporte ", width/2 , height/8 );
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(creditosR);
    fill(255);
    text("Nico Flores\nTecnoMultimedia1\nMatias Jauregui Lorda\nGoogle Images\nDaFont\nProcessing Fundation\nProcessing Fundation", width/2 , height/8 );
    
    textSize(5);
    textAlign(CENTER, BOTTOM);
    textFont(viaje);
    fill(255);
    text("Viaje en el Tiempo 2000", width/2 , height/8*6.5 );
    /*background(0);
    imageMode(CENTER);
    image(exploDC, width/4, height/8*7 -50 , 300, 200);
    image(portalCalle, width/4, height/2 - 25, 200, 400);*/
    
    //texto en consola 
    textSize(20);
    textFont(consola);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Pulsa ENTER para volver al inicio", width-25, height-25);  


  } else if ( estado.equals("PTesla") ){    //estado PRESENTACION TESLA
    
    background(0);
    imageMode(CORNER);
    image(labTesla, 0, 0, width, height ); 
    
     //consola 
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(20, 10, width-40, 140, 10);
    //texto en consola 
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(consola);
    fill(#0CF037);
    text("Haz llegado al laboratorio de NIKOLA TESLA, el inventor de la AC, prueba usar su energía estable para reactivar el portal", 25, 15, width-50, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Cliquea sobre tu opción", width-25, 135);
    
  //tesla
    imageMode(CORNER);
    image(tesla, 0, height - 300, 300, 400 );
 //dialogo
    noStroke();
    fill(0, 200);
    rect(380, height-215, 400, 200, 10);  //recuadro de dialogo
    textSize(15);
    textAlign(LEFT, TOP);
    fill(255);
    text("Hola viajero del tiempo, tu presencia aquí pone en riesgo al universo, te ayudaré a volver a casa, podriamos probar con mi modelo de electricidad sin cables.", 385, height-205, 395, height-5); //170
    text("Ya que estás aquí, que te parece probar mi bobina y alimentar tu portal, puedes elegir entre probarla o una activacion con cableado de AC.", 385, height-100, 395, height-5); //275
    rectMode(CENTER);                   //AC
    noTint();
    fill(255);
    ellipse(width/8*6, height/4 *2, 90, 90);
    imageMode(CENTER);
    image(alterna, width/8*6, height/4 *2, 100, 100);    //AC
    image(bobina, width/8*4, height/4*2, 100, 100);   //bobina 
    
  } else if ( estado.equals("Bobina") ) {
  
    background(0);
    imageMode(CORNER);
    tint(255,100);
    image(labTesla, 0, 0, width, height ); 
    noTint();
    image(tesla, 0, height - 300, 300, 400 );
    imageMode(CENTER);
    noTint();
    image(bobina, width/8*4, height/4*2, 100, 100);   //bobina 
    
    //consola
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(20, 10, width-40, 140, 10);
    //texto en consola 
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(consola);
    fill(#0CF037);
    text("NIKOLA TESLA quiere demostrarte toda la potencia de la energia alterna, pruebala y podras regresar.", 25, 15, width-50, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Mueve el CURSOR fuera de la BOBINA", width-25, 135);
    
 } else if ( estado.equals("Rayos") ) {   
   
   background(0);
    imageMode(CORNER);
    tint(0,0,255,200);
    image(labTesla, 0, 0, width, height ); 
    noTint();
    image(tesla, 0, height - 300, 300, 400 );
    
    imageMode(CENTER);
    noTint();
    image(rayosBobina, width/8*4, height/4*2, 500, 300);   //rayos bobina 
    
    // CREDITOS 
    fill(0, 50);
    rectMode(CORNER);
    rect(0,0, width, height);
    textSize(20);
    textAlign(RIGHT, TOP);
    textFont(creditosL);
    fill(255);
    text("Realizacíon \nProducción \n Coordinación \nImagenes \nTipografías \n\nSoporte ", width/2 , height/8 );
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(creditosR);
    fill(255);
    text("Nico Flores\nTecnoMultimedia1\nMatias Jauregui Lorda\nGoogle Images\nDaFont\nProcessing Fundation\nProcessing Fundation", width/2 , height/8 );
    
    //interaccion rayos
    imageMode(CENTER);
    image(rayosMouse, mouseX, mouseY , 300, 300);   //rayos mouse
    image(bobina, mouseX, mouseY, 100, 100);   //bobina 
    
    //texto en consola 
    textSize(20);
    textFont(consola);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Pulsa ENTER para volver al inicio", width-25, height-25);  
    
 } else if ( estado.equals("AC") ) {   //estado CORRIENTE CONTINUA
    background(0);
    imageMode(CENTER);
    image(exploAC, width/2, height/2 , 1200, 900);
    image(portalTra, width/2, height/2 + 15, 1100, 750);
    
    // CREDITOS 
    fill(0, 50);
    rectMode(CORNER);
    rect(0,0, width, height);
    textSize(20);
    textAlign(RIGHT, TOP);
    textFont(creditosL);
    fill(255);
    text("Realizacíon \nProducción \n Coordinación \nImagenes \nTipografías \n\nSoporte ", width/2 , height/8 );
    textSize(20);
    textAlign(LEFT, TOP);
    textFont(creditosR);
    fill(255);
    text("Nico Flores\nTecnoMultimedia1\nMatias Jauregui Lorda\nGoogle Images\nDaFont\nProcessing Fundation\nProcessing Fundation", width/2 , height/8 );
    
    textSize(5);
    textAlign(CENTER, BOTTOM);
    textFont(viaje);
    fill(255);
    text("Viaje en el Tiempo 2000", width/2 , height/8*6.5 );
   
//texto en consola 
    textSize(20);
    textFont(consola);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text("Pulsa ENTER para volver al inicio", width-25, height-25);  


} else if ( estado.equals("desconocido") ) {
    
    
      
 
 
 
 } else if ( estado.equals("futuro") ) {  //evento FUTURO
    image(futuro, 0, 0, width+300, height );
    
    
  } else if ( estado.equals("desconocido") ) {
  
    
    
  } else if ( estado.equals("desconocido") ) {
    
    
    
  }



  println( mouseX + " / " + mouseY);
}
