void mouseClicked() {

  // evento CLIC A PASADO
  if (botonCuadrado(width * 0.05, height* 0.53, 145, 40) && aventura.estado.equals("inicio")){ 
    aventura.estado = ("pasado");
  } 

  //evento CLIC A FUTURO
  if (botonCuadrado(width * 0.75, height* 0.53, 145, 40) && aventura.estado.equals("inicio")) {
    aventura.estado = ("futuro");

    // evento CLIC TESLA
  } else if (botonCuadrado(width/5, height/5, 150, 200 ) && aventura.estado.equals("pasado")) { 
    aventura.estado = ("PTesla");

    //evento CLIC EDISSON
  } else if (botonCuadrado( width/4 * 2, height/5, 280, 200) && aventura.estado.equals("pasado")) {
    aventura.estado = ("PEdisson");
  }
   // evento CLIC BOMBILLA
  if (botonCuadrado( width/8*3-40, height/4 *3-50, 80, 100) && aventura.estado.equals("PEdisson")) { 
    aventura.estado = ("Bombilla");

    //evento CLIC DC
  } else if ( botonCircular(width/8, height/4*3, 45) && aventura.estado.equals("PEdisson")) { 
    aventura.estado = ("DC");

    //evento CLIC BOMBILLA CAMBIO DE COLOR
  } else if (botonCuadrado( 472-40, 530-50, 80, 100) && aventura.estado.equals("Bombilla")) {
    aventura.estado = ("Bombilla");
    aventura.matiz= random(0, 360);
  }
  //evento CLIC BOBINA
  if (aventura.estado.equals("PTesla")&& dist(mouseX, mouseY, width/8*4, height/4*2) <= 45) {  
    aventura.estado = ("Bobina");
  
 //evento CLIC AC
  } else if ( botonCircular (width/8*6, height/4 *2, 90/2) && aventura.estado.equals("PTesla")) { 
    aventura.estado = ("AC");
}
}
void mouseMoved(){
 //evento PRESIONAR SOBRE BOBINA
  if(aventura.estado.equals("Bobina")&& !botonCircular(width/8*4, height/4*2, 90/2)){ 
    aventura.estado = ("rayos");
}
}
  
