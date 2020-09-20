//insertar MINIM---- sonido

import ddf.minim.*;

Minim minim;
AudioPlayer fondo;

//DIAGRAMA DE ESTADOS

String estado;

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

void setup() {
  size( 800, 600 );

estado = "inicio";

// CARGAR ARREGLOS 

  rayo = loadImage("rayo.png");
  exploAC = loadImage("explo2.png");
  exploDC = loadImage("explo1.png");
  Portal = loadImage("fondoX.png");
  PortalC = loadImage("portalCalle.png");
  error = loadImage("error.jpg");
  
  //fuentes 
    
    for(int i=0 ; i<5 ; i++){
     fuente[i] = loadFont ("letra"+i+".vlw");
   }
    
  //fondos
   for(int f=0 ; f<7 ; f++){
     base[f] = loadImage ("fondo"+f+".jpg");
   }
 
  //cientificos
   for(int c=0 ; c<2 ; c++){
     cientificos[c] = loadImage ("cientifico"+c+".png");
   }
  
  //inventos
   for(int c=0 ; c<4 ; c++){
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

void draw () {
  
  //pantalla (int imagenBase, float tinte, float opacidadTinte, float posXConsola, float posYConsola,int textoConsola, int orden)
  //botonCuadrado (float xBoton, float yBoton, float ancho, float alto)
  //BotonCuadroTexto (String texto, int letra, int relleno, float  CBX, float CBY )
  
  if ( estado.equals("inicio") ) {
    
    pantallaConsola(0, 255, 255, 0, 440, 0, 0);   
    
    //Boton pasado
    BotonCuadroTexto("PASADO", letra, relleno , width * 0.05 , height* 0.53);
    
      if (botonCuadrado (width * 0.75, height* 0.53, 145, 40)){
      relleno = 255;
      letra = 0;
      
      }else{
      relleno = 0;
      letra = 255;
     }
  
   //Boton futuro
   BotonCuadroTexto("FUTURO", letra, relleno , width * 0.75, height* 0.53);
    
      if(botonCuadrado (width * 0.05, height* 0.53, 145, 40)){
      relleno = 255;
      letra = 0;
      
      }else{
      relleno = 0;
      letra = 255;
     }

 } else if( estado.equals("pasado") ) { //evento PASADO
      
   pantallaConsola(1, 150, 125, 0, 440, 1, 0);    

    imageMode(CORNER);
    //Tesla 
    image(cientificos[0], width/5, height/5, 150, 200 );
    //Edisson
    image(cientificos[1], width/4 * 2, height/5, 280, 200 ); 
  

 } else if ( estado.equals("PEdisson") ) { 
 
   pantallaConsola(3, 255, 255, 0, 10, 3, 0);
     
     //Edisson
    imageMode(CORNER);
    image(cientificos[1], width - 430, height - 300, 420, 300 );
 
     dialogo (20, height * 0.272 , 1);
 
    ellipse(width/8, height/4*3, 90, 90);
    imageMode(CENTER);
    image(inventos[3], width/8, height/4 *3, 100, 100);    //DC
    image(inventos[2], width/8*3, height/4 *3, 80, 100);   //bombilla  
 
 
 } else if ( estado.equals("PTesla") ) { 
 
   pantallaConsola(2, 255, 255, 0, 10, 2, 0);
     
     //Tesla
     imageMode(CORNER);
     image(cientificos[0], 0, height - 300, 300, 400 );
 
     dialogo (width * 0.475 , height * 0.6545 , 0);
 
    ellipse(width/8*6, height/4 *2, 90, 90);
    imageMode(CENTER);
    image(inventos[1], width/8*6, height/4 *2, 100, 100);    //AC
    image(inventos[0], width/8*4, height/4*2, 100, 100);   //bobina 
 
 } else if ( estado.equals("Bobina") ) { 
 
   pantallaConsola(2, 150, 125, 0, 10, 4, 2);
     
     //Tesla
     imageMode(CORNER);
     image(cientificos[0], 0, height - 300, 300, 400 );
     //bobina 
     imageMode(CENTER);
     image(inventos[0], width/8*4, height/4*2, 100, 100); 
 
 } else if ( estado.equals("rayos") ) { 
  
   pantallaConsola(2, 150, 125, 0, 440, 5, 5);
     
     //interaccion rayos
    imageMode(CENTER);
    tint(255, 150);
    //rayos mouse
    image(rayo, mouseX, mouseY , 300, 300);   
     //bobina
    image(inventos[0], mouseX, mouseY, 100, 100);  
     
     //Tesla
     noTint();
     imageMode(CORNER);
     image(cientificos[0], 0, height - 300, 300, 400 );
   
   creditos(width/2 , height/10); 
    
  } else if ( estado.equals("AC") ) { 
  
   pantallaConsola(2, 150, 125, 0, 440, 5, 5);
     
     imageMode(CENTER);
     tint(150, 255);
     image(exploAC, width/2, height*.30 , 1200, 600);
     image(Portal, width/2, height* .37 , 1100, 750);
     
     //Tesla
     noTint();
     imageMode(CORNER);
     image(cientificos[0], 0, height - 300, 300, 400 );
   
   creditos(width/2 , height/10); 
    
 } else if ( estado.equals("Bombilla") ) { 
 
   pushStyle();
   pantallaConsola(3, 150, 255, 0, 10, 6, 3);
     
     //Edisson
     colorMode(HSB, 360, 100, 100);
     fill(matiz, 100, 100, 75);
     quad(226, 326, 286, 330, 281, 446, 226, 446);
     quad(350, 331, 400, 336, 400, 449, 352, 452);
     quad(695, 337, 742, 340, 745, 462, 692, 460);
     noTint();
     imageMode(CORNER);
    image(cientificos[1], width - 430, height - 300, 420, 300 );
     //bombilla
     imageMode(CENTER);
     tint(matiz, 100, 100, 75);
     image(inventos[2], 472, 530, 80, 100); 
 
     //texto en consola 
     textFont(fuente[1], 23);
     textAlign(LEFT, BOTTOM);
     fill(#0CF037);
     text("Pulsa ENTER para volver al inicio", 25, height-25);  
     
   popStyle();
 
 } else if ( estado.equals("DC") ) { 
  
   pantallaConsola(3, 150, 125, 0, 10, 5, 5);
     
     imageMode(CENTER);
     tint(150, 255);
     image(exploDC, width*.35, height*.65 , 1200, 600);
     image(Portal, width*0.35, height* .65 , 1000, 700);
     
     //Edisson
     noTint();
     imageMode(CORNER);
    image(cientificos[1], width - 430, height - 300, 420, 300 );
   
   creditos(width/3 , height/3); 
 
  } else if ( estado.equals("futuro") ) {  
 
    pantallaConsola ( 4, 255, 255, 0, 440, 7, 6);
  
    // prueba de color
    imageMode(CENTER);
    image(error, width/2 , height/3*1 , width/2 , height/2 );  
  
  } else if ( estado.equals("fix") ) {  
 
    pantallaConsola ( 4, 255, 255, 0, 440, 8, 5);
  
   imageMode(CENTER);
    tint(200, 255);
   image(Portal, width/8*4.15, height/3 + 15, 1100, 750);  
   
   creditos(width/2 , height/10);
  
  } else if ( estado.equals("stay") ) {  
 
    pantallaConsola ( 5, 255, 255, 0, 440, 9, 7);
  
  } else if ( estado.equals("run") ) {  
 
    pantallaConsola ( 4, 255, 255, 0, 440, 10, 5);
  
   imageMode(CENTER);
    tint(200, 255);
   image(Portal, width/8*4.15, height/3 + 15, 1100, 750);  
   
   creditos(width/2 , height/10);
  
} else if ( estado.equals("trans") ) {  
 
    pantallaConsola ( 6, 200, 255, 0, 440, 11, 5);
  
   imageMode(CENTER);
    tint(230, 255);
   image(PortalC, width/8, height/5*2 - 25, 200, 400);  
   
   creditos(width/2 , height/10);  

} 

 }


  
