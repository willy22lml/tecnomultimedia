//creacion de rectangulos moviles

void RectMovil(int ejeY, int anchoX, int altoY) {

  if (ejeX >= width-60) {
    velX=-1;
  } else if (ejeX <= 0) {
    velX=+1;
  } 

  
  rect(ejeX, ejeY, anchoX, altoY );
} 

//bucle barras del fondo
void FondoBarras() {

  fill(255);
  for (int  i=0; i<width; i+=30) {
    rect(i, 0, 15, 600);
  }
}
