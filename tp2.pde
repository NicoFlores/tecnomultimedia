//carga y visualizacion de imagenes externas

//variable que permite cargar imagenes

//  carga LOGO
PImage logo, personajes, flower, creadores;
// carga FUENTE
PFont fuente, maquina;

//declaro varias variables del mismo tipo en una sola linea
float ancho, alto ;
// variables para TEXTO
float letraChica, letraGrande;
// COLOR
color amarillo ;
//PANEO PERSONAJES 
float paneoR, paneoL, paneoUP, paneoDOWN ;

void setup() {
  size( 500, 400 );
  println(mouseX+"X"+","+mouseY+"Y"); //ver coordenadas 

  //cargo VARIABLES
  logo = loadImage( "That70sShow.png" );
  personajes = loadImage ("personajes.png");
  flower = loadImage ("Flower.png");
  creadores = loadImage ("creadores.jpg");
  fuente = loadFont( "CooperBlack.vlw");
  maquina = loadFont( "Maquina.vlw");
  amarillo = color (#D3C844);
 
  //similar al rectMode: corner, center
  imageMode( CENTER );
  rectMode( CENTER );

  //asigno VALOR A VARIABLES
  // texto intro
  ancho = 80 ;
  alto = 50 ;
  // letras 
  letraChica = 20;
  letraGrande = 25;
  //paneos
  paneoR = -260 ;
  paneoL = 1580 ;
  paneoUP = 2130 ;
  paneoDOWN = -2630;
  
}

void draw() {
  background( 0 );

  //visualizo mi imagen LOGO
  //image( name, posX, posY, ancho, alto );
  image( logo, width/2, height/2, ancho + frameCount * frameCount/20 , alto + frameCount * frameCount/20 );

//recuadro negro = SEGUNDO BACKGROUND
  noStroke();
  fill( 0 , frameCount * frameCount * 0.05 - 50)  ;
  rectMode( CORNERS );
  rect( 0, 0, width , height );

//imagen PERSONAJES
 image( personajes, paneoR, height - 90, 350 , 150);
 
 //funcion para escribir texto
  //text( "eltexto", x, y );
  //textSize( tamanio );
  //textAlign( alineacionHorizontal, alineacionVertical );
    //alineacionHorizontal: LEFT, CENTER, or RIGHT
    //alineacionVertical: TOP, BOTTOM, CENTER, or BASELINE
  textAlign( CENTER, BOTTOM );
  textFont( fuente );
  fill( amarillo );
  textSize( letraChica );
  text( "staring", paneoR , 60 );

  // PROTAGONISTAS 
  textAlign( CENTER, BOTTOM );
  textFont( fuente );
  fill( amarillo );
  textSize( letraGrande );
  text( "THOPER GRACE", paneoR, 100 );
  text( "MILA KUNIS", paneoR, 125 );
  text( "ASHTON KUTCHER", paneoR, 150 );
  text( "DANNY MASTERSON", paneoR, 175 );
  text( "LAURA PREPON", paneoR, 200 );
  text( "WILMER VALDERRAMA", paneoR, 225 );
  
  textAlign( CENTER, BOTTOM );
  textFont( fuente );
  fill( amarillo );
  textSize( letraChica );
  text( "with", paneoL , 90 );

  // SECUNDARIOS
  textAlign( CENTER, BOTTOM );
  textFont( fuente );
  fill( amarillo );
  textSize( letraGrande );
  text( "DEBRA JO RUPP", paneoL, 130 );
  text( "KURTWOOD SMITH", paneoL, 155 );
  text( "TANYA ROBERTS", paneoL, 180 );
  text( "DON STARK", paneoL, 205 );
  //imagen FLOR
  image( flower, paneoL, height - 105, 110 , 100);
  
  // MUSICA
  
  textAlign( CENTER, BOTTOM );
  textFont( fuente );
  fill( amarillo );
  
  textSize( letraChica - 5 );
  text( "That 70's Song by", width/4 , paneoUP );
  textSize( letraGrande - 5 );
  text( "BEN VAUGHN", width/4, paneoUP + 20 );
  textSize( letraChica - 5 );
  text( "Based on In The Street by", width/4, paneoUP + 45 );
  textSize( letraGrande - 5 );
  text( "ALEX CHILTON", width/4, paneoUP + 65);
  text( "and CHRIS BELL", width/4, paneoUP + 87);
  textSize( letraChica - 5 );
  text( "Sung by", width/4, paneoUP + 112 );
  textSize( letraGrande - 5 );
  text( "TODD GRIFFIN", width/4, paneoUP + 132);
  
  //PRODUCTORES
  textSize( letraChica - 5 );
  text( "Co-Producers", width* 3/4 , paneoUP + 200 );
  textSize( letraGrande - 5 );
  text( "JEFF FILGO", width * 3/4, paneoUP + 220 );
  textSize( letraChica - 5 );
  text( "&", width * 3/4, paneoUP + 240 );
  textSize( letraGrande - 5 );
  text( "JACKIE BEHAM", width * 3/4, paneoUP + 260);
  
  //CREADORES
  image( creadores, width/2, paneoDOWN, 600 , 300);
  
  //FECHA Y LUGAR 
  textAlign( CENTER, BOTTOM );
  textFont( maquina );
  fill( 255, frameCount * frameCount * 0.05 - 550000 );
  textSize( letraChica );
  text( "Point Place, Wisconsin ", width/2 , height/2 -25 );
  fill( 255, frameCount * frameCount * 0.05 - 600000 );
  text( "May 17, 1976", width/2 , height/2  );
  fill( 255, frameCount * frameCount * 0.05 - 650000 );
  text( "8:47 p.m.", width/2 , height/2 + 25 );
  
  /*//3) U T I L I Z A C I O N 
  fill( (frameCount/2) %255 );  //CUANDO EL FILL PASA 255, SE BUGUEA = %255 permite como reiniciar el ciclo (resto de una division)
  textSize( 24 );
  text( comision, 200, 230 );
  
  //actualizo valor variables
  tamanioTexto += 0.1;
*/

 // Actualizar las variables
 paneoR += 1 ; 
 paneoL -= 1 ;
 paneoUP -=1 ;
 paneoDOWN +=1;

  //imprimo valores en consola
  //println( posX + " / " + posY);

}
