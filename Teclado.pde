void keyPressed() {
  if (keyCode == ENTER ){
  aventura.estado = ("inicio");
  }
   //evento F reparar portal
 if( key == 'f' && aventura.estado.equals("futuro") || key == 'F' && aventura.estado.equals("futuro") ){
    aventura.estado = "fix";
  }
  
 //evento S quedarte en el 2020
 if( key == 'S' && aventura.estado.equals("futuro") || key == 's' && aventura.estado.equals("futuro") ){
    aventura.estado = "stay";
  }

 //evento R correr
 if( key == 'R' && aventura.estado.equals("stay") || key == 'r' && aventura.estado.equals("stay") ){
    aventura.estado = "run";
 
 //evento T transbordador
 }else if( key == 'T' && aventura.estado.equals("stay") || key == 't' && aventura.estado.equals("stay") ){
    aventura.estado = "trans";
  }
 }
  
  
  
  
  
  
