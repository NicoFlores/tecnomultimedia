// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// NOMBRE ALUMNO * Israel Nicolas Flores Llanos
// NOMBRE TENTATIVO DEL JUEG0 *  Alerta Virus

/* PROPUESTA 
 
 
 */



//declaro la clase juego

Fondo error;
Virus[] rojo = new Virus[5], verde = new Virus[5], violeta = new Virus[5] ;
Mira mira;
Contador consola;

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

void keyPressed() {
  //metodos de las teclas
  //juego.teclas();
}


//autor virus rojo
//Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
//autor virus verde
//Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
//autor virus morado
//Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
//autor mira 
//Iconos diseñados por <a href="https://www.flaticon.es/autores/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
