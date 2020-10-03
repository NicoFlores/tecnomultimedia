int c = 6;
//declaro y creo el arreglo
DVD[] objeto = new DVD[c];

void setup() {
  size(900, 700);
  for ( int i = 0; i < c ; i++ ) {
    //creo cada instancia de objeto
    objeto[i]=new DVD(60*(i+1));
  }
}

void draw() {
  
  fill( 0 );
  rect(0, 0, width, height );
  
  
  for ( int i = 0; i < c; i++ ) {
    objeto[i].move();
    objeto[i].reb();
    //dibuja circulos
    objeto[i].dib();

  }
}
