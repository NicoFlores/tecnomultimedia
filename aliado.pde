  class Aliado {
    
    //CAMPOS (variables) propiedades 
    
    float x, y; 
    float ancho, alto;
    int a;
    
    //CONTRUCTOR 
    
    Aliado (float xa, float ya, float anchoa, float altoa, int aimage){
    
    x = xa;
    y = ya;
    ancho = anchoa;
    alto = altoa;
    a = aimage;
    
    for  (int i = 1; i < 13; i = i++){ 
  aliado[i] = loadImage ("walkcolor000"+ i + ".png"); 
  }
    
    }
  
    //METODOS (funciones) acciones
     
    void dibujar(){
    
    image(aliado[a], x, y);
      
    }   
    
    void caminarDerecha(){
    
     if (keyCode == RIGHT ){
    x +=5;
    a = a++%12;  
  if (a == 12){
        a = 0;
      }  
     }  
}   
    void caminarIzquierda(){
    
    if (keyCode == LEFT ){}
    x -=5;
    a = a++;
      if (a == 12){
        a = 0;
      }
  }
  }
