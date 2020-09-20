void keyPressed() {
  if (keyCode == ENTER ){
  estado = ("inicio");
  }
   //evento F reparar portal
 if( key == 'f' && estado.equals("futuro") || key == 'F' && estado.equals("futuro") ){
    estado = "fix";
  }
  
 //evento S quedarte en el 2020
 if( key == 'S' && estado.equals("futuro") || key == 's' && estado.equals("futuro") ){
    estado = "stay";
  }

 //evento R correr
 if( key == 'R' && estado.equals("stay") || key == 'r' && estado.equals("stay") ){
    estado = "run";
 
 //evento T transbordador
 }else if( key == 'T' && estado.equals("stay") || key == 't' && estado.equals("stay") ){
    estado = "trans";
  }
 }
  
  
  
  
  
  
