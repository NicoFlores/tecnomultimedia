// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// NOMBRE ALUMNO * Israel Nicolas Flores Llanos
// NOMBRE TENTATIVO DEL JUEG0 * GO HOME

/* PROPUESTA 
 
 
 */

int c = 20;

//declaro la clase juego

Fondo error;
Virus[] objeto= new Virus[c];
Mira mira;
Contador consola;

//Juego juego;

void setup() {
  size( 800, 600 );
  //inicializo la clase juego
  
  error = new Fondo ();
  
 for ( int i = 0; i < c ; i++ ) {
  //creo cada instancia de objeto
  objeto[i]=new Virus(i);
  }
  
  mira = new Mira ();
  
  consola = new Contador ();
  
  
  //juego = new Juego();
}

void draw() {
  
  error.dibujar();
  
 for ( int i = 0; i < c; i++ ) {
  objeto[i].mover();
  objeto[i].rebotar();
  
  //dibuja circulos
  objeto[i].dibujar();
 }  
  
  mira.dibujar ();
  
  consola.dibujar ();
  
  //llamo a los métodos de la clase Juego
  //juego.actualizar();
  //juego.dibujar();
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
