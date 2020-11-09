   
  boolean botonCuadrado(float xBoton, float yBoton, float ancho, float alto) {
  
   if(mouseX > xBoton && mouseX < (xBoton + ancho) && mouseY > yBoton && mouseY < (yBoton + alto)){
      return true;
    }else{
      return false;
    }
  }
  
  boolean botonCircular( float xBoton, float yBoton, float radio ){
    if( dist(mouseX, mouseY, xBoton, yBoton ) < radio ){
      return true;
    }else{
      return false;
   }
 }
    
 void creditos(int x, int y ){
    
   textAlign(RIGHT, TOP);
    textFont(aventura.fuente[2], 45);
    fill(255);
    text("Realizacíon \nProducción \n Coordinación \nImagenes \nTipografías \n\nSoporte ", x, y );
    textAlign(LEFT, TOP);
    textFont(aventura.fuente[3]);
    fill(255);
    text("Nico Flores & Clara Fallesen\nTecnoMultimedia1\nMatias Jauregui Lorda\nGoogle Images\nDaFont\nProcessing Fundation\nProcessing Fundation", x, y );
 
 }
  
  void BotonCuadroTexto (String texto, int letra, int relleno, float  CBX, float CBY ) {
    pushStyle();
      
      //cuadro
      rectMode(CORNER);
      strokeWeight(2);
      stroke(0);
      fill(relleno);
      rect( CBX , CBY , 145, 40); //pasado
      
      //texto 
      textAlign(CENTER , CENTER);
      textFont(aventura.fuente[0], 35);
      fill(letra);
      text(texto, CBX + 145/2 , CBY + 20 );
  
  popStyle();
  
  }
  
void dialogo (float textX, float textY, int texto){
  pushStyle();
    
    noStroke();
    fill(0, 200);
    rect(textX, textY, 400, 200, 10);  
    textAlign(LEFT, TOP);
    textFont(aventura.fuente[1], 16.5);
    fill(255);
    text(aventura.dialogo[texto], textX+10, textY+10, 380, 180); //170
    
  popStyle();
  
}
  
  void pantallaConsola (int imagenBase, float tinte, float opacidadTinte, float XConsola, float YConsola, int textoConsola, int orden) {
  
   pushStyle();
   
    imageMode(CORNER);
    tint( tinte, opacidadTinte  );
    image( aventura.base[imagenBase], 0, 0, width, height);

    //consola inicio
    noTint();
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(XConsola + (width * 0.025) , YConsola, width - (width * 0.05) , height /100 * 23 , 10);   
    
     //texto en consola 
    textAlign(LEFT, TOP);
    textFont(aventura.fuente[1], 23);
    fill(#0CF037);
    text(aventura.consola[textoConsola], XConsola + (width / 100 * 3.125), YConsola + 5, width-50, height-25);
    textAlign(RIGHT, BOTTOM);
    text(aventura.indicador[orden], XConsola + width - (width /100 * 3.8), YConsola + (height /100 * 23) -5 );

  popStyle();
 }
