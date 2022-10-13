class Persona {
//*****Atributos********//
  PImage  Hombre;
  int CaminaX;

//*****Constructor********//
  Persona() {
    Hombre= loadImage("persona.png");
    CaminaX = 500;
  }

//*****Metodos********//
  void Dibujar() {
    Hombre();
  }

  void Hombre() {
    image(Hombre, CaminaX, 200, 200, 420);
    Camina();
  }

  void Camina() {
    if (keyCode == RIGHT) {
      CaminaX ++;
    } else if (keyCode == LEFT) {
      CaminaX --;
    }
  }
}
