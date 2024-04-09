//bucle for 
int y=0;
void setup(){
  size(600,600); // tamaño de canvas que, que si esta pantalla completa no aplica
  fullScreen(); //pantalla completa
 frameRate(200); //velocidad de reaccion
 noCursor();
}

//ejecutar ctrl+r
void draw(){ //dibujar
     background(255,0,34); //color de fondo
     
     for (int i = 0; i< 10; i++){ //variabe de iteracion
       rect(100,100*i, 75*i+10, 75); //rect es para dibujar cuadrado, los 100 corresponden a su tamaño, y 75 a su posicion y tamaño para que cambie de dimensiones
     };
     ellipse(40+y%1000,40+y%1000,40+y%200,40+y%200); // para dibujar un circulo 40 para tamaño y posicion de inicio % simbolo para elegir la posicion o tamaño en donde debe reiniciar la figura
     y= y+1; // para asignar un valor a una variable y hacer crecer la figura
}
