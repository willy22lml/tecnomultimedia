class Arbol {
//*****Atributos********//
  PImage Arbol;

//*****Constructor********//
  Arbol() {
    Arbol = loadImage("arbol.png");
  }

//*****Metodo********//
  void Dibujar() {
    image(Arbol, 50, 150, 300, 300 );
  }
}
