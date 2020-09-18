//insertar MINIM---- sonido

import ddf.minim.*;

Minim minim;
AudioPlayer fondo;

//DIAGRAMA DE ESTADOS

String estado;

////imagenes pasado
//PImage Inicio, pasado, futuro, tesla, edisson, casaEdisson, labTesla, bombilla, bobina, alterna, continua, portalTra, portalCalle,exploDC, exploAC, rayosBobina, rayosMouse;
////imagenes futuro
//PImage error, policia, calle ;
//PFont tiempos, consola, creditosR,creditosL, viaje ;
//int cuadro, letras;
//float tinte;

//ARREGLOS

//fuentes
PFont [] fuente = new PFont [4];

//imagenes
PImage [] base = new PImage[7]; 
//textos
String [] consola = new String[12]; 
String [] indicador = new String[8]; 


void setup() {
  size( 800, 600 );

// CARGAR ARREGLOS 

  //fuentes 
    
    for(int i=0 ; i<4 ; i++){
     fuente[i] = loadFont ("letra"+i+".vlw");
   }
    
  //fondos
   for(int f=0 ; f<7 ; f++){
     base[f] = loadImage ("fondo"+f+".jpg");
   }
  //consola
    //pasado
    consola[0] = "Hola viajero, listo para un aventura en el tiempo, deberas elegir a donde deseas ir , PASADO o FUTURO";
    consola[1] = "Haz llegado a 1880 y solo dos lugares tienen la tecnología necesaria para abrir el portal de vuelta, la casa de THOMAS EDISSON y el laboratorio de NIKOLA TESLA.";
    consola[2] = "Bienvenido al laboratorio de NIKOLA TESLA, el inventor de la AC, prueba usar su energía estable para reactivar el portal";
    consola[3] = "Ahora estás en la casa de THOMAS EDISSON, él es conocido por no tener un muy buen humor, intenta agradarle o no molestarlo demasiado.";
    consola[4] = "NIKOLA TESLA quiere demostrarte toda la potencia de la energia alterna, pruebala y podras regresar.";
    consola[5] = "Viaje en el Tiempo 2000";
    consola[6] = "THOMAS EDISSON es conocido por inventar la bombilla, mira que inovación tiene para mostrarte en su invento.";
    //futuro
    consola[7] = "Por falta de energia has caido en el 2020, un extraño virus tiene a toda la población en casa, corres peligro de entontrarte con tu YO del futuro y el portal solo puede realizar un viaje.";
    consola[8] = "El portal está reparado, pero solo resitirá el viaje de regreso, debes volver y alertar a todos sobre este virus, BUENA SUERTE VIAJERO.";
    consola[9] = "La POLICIA te ha detenido por no llevar barbijo, el virus podría estar en cualquer parte, debes elegir entre CORRER o DEJAR QUE TE DETENGAN";
    consola[10] = "El portal ahora tiene carga para un viaje de regreso, no dejes que la policia te atrape, BUENA SUERTE VIAJERO.";
    consola[11] = "La policia quiere enviarte de vuelta a casa o llevarte a prisión y un portal aparece sorpesivamente en la calle entra lo antes posible.";


  //indicador
    //cliiquea sobre tu opcion 
    indicador[0] = "Cliquea sobre tu opción";
    indicador[2] = "Mueve el CURSOR fuera de la BOBINA";
    indicador[3] = "Cliquea sobre la BOMBILLA";
    indicador[4] = "Mueve el CURSOR fuera de la BOBINA";
    indicador[5] = "Pulsa ENTER para volver al inicio";
    //futuro
    indicador[6] = "Pulsa (F) para reparar el portal o (S) para quedarte en el 2020";
    indicador[7] = "Pulsa (R) para correr o (T) para cooperar con la policía";
    
}

void draw () {
  
  //pantalla (int imagenBase, float posXConsola, float posYConsola,int textoConsola, int orden)
  pantalla(0, 0, 440, 0, 0);
  
  
  
  
  
}

  
  
