

  
  void pantalla (int imagenBase, float posXConsola, float posYConsola, int textoConsola, int orden) {
  
   pushStyle();
    imageMode(CORNER);
    
    image( base[imagenBase], 0, 0, width, height);
    
    //consola inicio
    rectMode(CORNER);
    noStroke();
    fill(0, 50);
    rect(posXConsola + (width / 100 * 2.5) , posYConsola, width - (width /100 * 5) , height /100 * 23 , 10);   
    
     //texto en consola 
    textSize(1);
    textAlign(LEFT, TOP);
    textFont(fuente[1]);
    fill(#0CF037);
    text(consola[textoConsola], posXConsola + (width / 100 * 3.125), posYConsola + 5, width-5, height-5);
    textAlign(RIGHT, BOTTOM);
    fill(#0CF037);
    text(indicador[orden], width-25, height-25);

  ////void pantalla ()
  
  ////ciclo if para manejar estados
  
  //// estado INICIO
  
  //if ( estado.equals("inicio") ) {

  //  //imageMode(CORNER);
  //  //image( Inicio, 0, 0, width, height );

  //  //consola inicio
  //  rectMode(CORNER);
  //  noStroke();
  //  fill(100);
  //  rect(0, 420, width, height);
  //  fill(0, 50);
  //  rect(20, 440, width-40, 140, 10);
  //  //texto en consola 
  //  textSize(20);
  //  textAlign(LEFT, TOP);
  //  textFont(consola);
  //  fill(#0CF037);
  //  text("Hola viajero, listo para un aventura en el tiempo, deberas elegir a donde deseas ir , PASADO o FUTURO", 25, 445, width-5, height-5);
  //  textAlign(RIGHT, BOTTOM);
  //  fill(#0CF037);
  //  text("Cliquea en pantalla la opcion adecuada", width-25, height-25);

  //  //cuadros pasado y futuro
  //  rectMode(CORNER);
  //  strokeWeight(2);
  //  stroke(0);
  //  fill(cuadro);
  //  rect(40, 320, 145, 40); //pasado
  //  rect(600, 320, 145, 40); //futuro

  //  textSize(1);
  //  textAlign(LEFT, BOTTOM);
  //  textFont(tiempos);
  //  fill(letras);
  //  text("FUTURO", 600, 360);

  //  textSize(1);
  //  textAlign(RIGHT, BOTTOM);
  //  textFont(tiempos);
  //  fill(letras);
  //  text("PASADO", 185, 360);
    
  //  //cambios de color cuadros inicio
  //  if (mouseX > 40 && mouseX < 185 && mouseY > 320 && mouseY < 360 ||
  //    mouseX > 600 && mouseX < 745 && mouseY > 320 && mouseY < 360) {
  //    cuadro = 255;
  //    letras = 0;
  //  } else {
  //    cuadro = 0; 
  //    letras = 255;
  //  } 
  
  popStyle();

}
