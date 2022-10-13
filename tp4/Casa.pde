class Casa {
//*****Atributos********//
  PImage casa;
  int posX;
  int posY; 
  int Ancho;
  int Alto;

//*****Constructor********//
  Casa() {
    casa =  loadImage("casa.png");
    posX = 555;
    posY = 20;
  }

//*****Metodo********//
  void Dibujar() {
    image(casa, posX, posY);
  }
}
