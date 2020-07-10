void mouseClicked() {

  // evento CLIC A PASADO
  if (mouseX > 40 && mouseX < 185 && mouseY > 320 && mouseY < 360 && estado.equals("inicio")) { 
    estado = ("pasado");
  } 

  //evento CLIC A FUTURO
  if (mouseX > 600 && mouseX < 745 && mouseY > 320 && mouseY < 360 && estado.equals("inicio")) {
    estado = ("futuro");

    // evento CLIC TESLA
  } else if ((estado.equals("pasado") && mouseX > width/5 && mouseX < width/5 + 150 && mouseY > height/5 && mouseY < height/5 + 280)) { 
    estado = ("PTesla");

    //evento CLIC EDISSON
  } else if (estado.equals("pasado") && mouseX > width/4 * 2 && mouseX < width/4 * 2 + 280 && mouseY > height/5 && mouseY < height/5+ 200) {
    estado = ("PEdisson");
  }
  // evento CLIC BOMBILLA
  if (estado.equals("PEdisson") && mouseX > (width/8*3) - 40 && mouseX < width/8*3 +40 && mouseY > height/4 *3 - 50 && mouseY < height/4 *3 + 50) { 
    estado = ("Bombilla");

    //evento CLIC DC
  } else if ( estado.equals("PEdisson") && dist(mouseX, mouseY, width/8, height/4 *3) <= 45) { 
    estado = ("DC");

    //evento CLIC BOMBILLA CAMBIO DE COLOR
  } else if (estado.equals("Bombilla") && mouseX > 475 - 40 && mouseX < 475 + 40 && mouseX < 525 - 50 && mouseX < 525 + 50) {
    estado = ("Bombilla");
    tinte= random(0, 360);
  }
  //evento CLIC BOBINA
  if (estado.equals("PTesla") && dist(mouseX, mouseY, width/8*4, height/4*2) <= 45) {  
    estado = ("Bobina");
  
 //evento CLIC AC
  } else if ( estado.equals("PTesla") && dist(mouseX, mouseY, width/8*6, height/4 *2) <= 45) { 
    estado = ("AC");

}
}

void mouseMoved(){
 //evento PRESIONAR SOBRE BOBINA
  if(estado.equals("Bobina")){
  if(dist(mouseX, mouseY, width/8*4, height/4*2) >= 45) {  
    estado = ("Rayos");
    tinte = (215); 
}
}
}
//}
