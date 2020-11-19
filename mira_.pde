class Mira {
  float x, y;
  float tam;
  PImage [] mira = new PImage [2];

   // --------------------------CONTRUCTOR---------------------------
  
  Mira() {

    // inicializar posicion y tamaño mediante parámetros
    imageMode(CENTER);
    for ( int j = 0; j < mira.length; j++ )
      mira [j]  = loadImage("mira"+ j +".png");

    x = width/2;
    y = height/2;
    tam = 100;
  }

   // --------------------------METODOS (funciones)---------------------------
  
  void dibujar(AudioSample shot) {

    if (mousePressed == true) {
      shot.trigger();
      image( mira[1], mouseX, mouseY, tam, tam);
      x = mouseX;
      y = mouseY;
    } else {

      image( mira[0], mouseX, mouseY, tam, tam);

      x = mouseX;
      y = mouseY;
    }
  }
}    
