class Mira {
  float x, y;
  float tam;
  PImage [] mira = new PImage [2];

   Mira() {

    // inicializar posicion y tamaño mediante parámetros
    imageMode(CENTER);
    for ( int j = 0; j < mira.length; j++ )
      mira [j]  = loadImage("mira"+ j +".png");

    x = width/2;
    y = height/2;
    tam = 100;
  }

  void dibujar(AudioSample shot) {

    if (mousePressed == true) {
       shot.play();
      image( mira[1], mouseX, mouseY, tam, tam);
      x = mouseX;
      y = mouseY;
     
    } else {

      image( mira[0], mouseX, mouseY, tam, tam);
      
      x = mouseX;
      y = mouseY;
    }
  }

  // segundo modo de avaluar colisiones ------ peligroso, no jugar con el por fa 
  
  //void tirar(Virus[] objetivo) {

  //  for ( int o = 0; o < objetivo.length; o++ ) {

  //    float d = dist(x, y, objetivo[o].x, objetivo[o].y);

  //    println (o, d);

  //    //strokeWeight(10);
  //    //fill(#05EAFC);
  //    circle(objetivo[o].x, objetivo[o].y, tam);
  //  }
  //}
}    
