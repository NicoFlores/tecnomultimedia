// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// NOMBRE ALUMNO * Israel Nicolas Flores Llanos
// NOMBRE TENTATIVO DEL JUEG0 *  Alerta Virus

/* PROPUESTA 
 
 En mi aventura gráfica al pulsar en la opcion futuro el viajero sufre un accidente y cae en el 2020
 esto es peligroso pues podria encontrarse con su otro yo y romper la barrera espacio temporal, el juego
 tratará de enfrentar a los virus, ganar y ser rediriguido al pasado, o caer en el 2020 con daños en el 
 transbordador y contuniar con la aventura en el futuro que es muy peligrosa.
 
 Funcionamineto
 
 un objeto mira se encarga de destruir a una serie de objetos virus, los cuales no son todos malignos, el 
 jugador debe eliminar a los virus correcto o sino dañará el transbordador
 
 */



//declaro la clase juego

Juego juego;

void setup() {
  size( 800, 600 );
  
  //inicializo la clase juego

  juego = new Juego();
}

void draw() {

  //llamo a los métodos de la clase Juego
  //juego.actualizar();
  juego.mover ();

  juego.dibujar();
}

void mouseClicked() {

  juego.clic();
}

void keyPressed() {

  juego.teclas();

}


//autor virus rojo
//Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
//autor virus verde
//Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
//autor virus morado
//Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
//autor mira 
//Iconos diseñados por <a href="https://www.flaticon.es/autores/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
