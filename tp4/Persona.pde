class Persona {
  PImage  Hombre;
  int CaminaX;

  Persona() {
    Hombre= loadImage("persona.png");
    CaminaX = 500;
  }

  void Dibujar() {
    Hombre();
  }

  void Hombre() {
    image(Hombre, CaminaX, 200, 200, 420);
  }

  void Camina() {
    if (keyCode == RIGHT) {
      CaminaX ++;
    } else if (keyCode == LEFT) {
      CaminaX --;
    }
  }
}
