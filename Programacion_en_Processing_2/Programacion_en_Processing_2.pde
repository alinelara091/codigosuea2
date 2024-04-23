//INTRUCCIONES:para que la presentacion corra, unicamente debes elegir la opcion de ejecutar y el codigo hace todo solo 
PImage fondo; // Variable para almacenar la imagen de fondo
String texto = "LO NUESTRO"; // El texto que quieres mover
float x = 0; // Posición inicial en el eje x
PFont fuente; // Variable para almacenar la fuente

void setup() {
  fullScreen();
   fuente = createFont("Britannic Bold", 52); // Carga la fuente Arial con tamaño 32
  textFont(fuente); // Establece la fuente para el texto
  textSize(50); // Tamaño del texto
   fondo = loadImage("C:/Users/aline/OneDrive/Documentos/kiosko_lerma.jpg"); // Carga la imagen de fondo
}

void draw() {
  background(255, 51, 119); // Fondo blanco
  textSize(20);
  text("Entre nosotros, Aline Lara; del 10 al 29 de septiembre 2024",1300,1000);
  // Calcula la escala para que la imagen se ajuste al tamaño del canvas pero sea más pequeña
  float escala = min(width / float(fondo.width), height / float(fondo.height)) * 0.5;
  
  // Calcula la posición para centrar la imagen en el lienzo
  float fondoX = (width - fondo.width * escala) / 2;
  float fondoY = (height - fondo.height * escala) / 2;
  
  // Dibuja la imagen de fondo con la escala y posición calculadas
  image(fondo, fondoX, fondoY, fondo.width * escala, fondo.height * escala); // Dibuja la imagen de fondo
 // Dibuja un círculo detrás del texto
  float circleX = x + textWidth(texto) / 2; // Posición x del centro del círculo
  float circleY = height / 2; // Posición y del centro del círculo
  float circleSize = textWidth(texto) * 1.5; // Tamaño del círculo
  
  fill(0, 0, 255); // Color azul (RGB) para el círculo
  ellipse(circleX, circleY, circleSize, circleSize); // Dibuja el círculo
  
  fill(255, 165, 0); // Color naranja (RGB) para el texto
  // Muestra el texto en la posición actual
  text(texto, x, height/2);
  
  // Incrementa la posición en el eje x para mover el texto hacia la derecha
  x += 1;
  
  // Si el texto se sale de la ventana, reinicia su posición
  if (x > width) {
    x = -textWidth(texto);
  }
}
