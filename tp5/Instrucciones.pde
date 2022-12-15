class Instrucciones {

  /////////////////////////////////////////////////////////////////////////////
  //////////********* declaracion de Atributos*********////////////////////////
  /////////////////////////////////////////////////////////////////////////////
  PImage fondo, volver;
  String Historia, MiniJuego, titulo1, titulo2;
  int EjeX, EjeY;
  boolean botonVolver;

  /////////////////************CONSTRUCTOR***********//////////////////////////////

  Instrucciones() {

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de IMG*********///////////////////
    //////////////////////////////////////////////////////////////////////
    fondo = loadImage("fondos/fondoInstrucciones.jpg");
    volver = loadImage("Img_Menu/volver.png");

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de texto*********/////////////////
    //////////////////////////////////////////////////////////////////////
    Historia = "Para avanzar dentro de la historia \n escoja una decision y presione el boton.";
    MiniJuego = "Utilizando el click izquierdo \n trate de apagar las distintas llamas \n antes de que se acabe el tiempo.";
    titulo1= "HISTORIA GRAFICA";
    titulo2= "MINIJUEGO";

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de enteros*********///////////////////
    //////////////////////////////////////////////////////////////////////
    EjeX = 190;
    EjeY= 160;

    botonVolver = false;
  }

  /////////////////************METODOS***********////////////////////////////////
  void dibujar() {

    image(fondo, 0, 0, width, height);
    construccionDeCreditos();
    botonVolver = true;
    image(volver, 20, 20, 50, 50);
  }

  void construccionDeCreditos() {

    fill(0);
    textSize(19);
    textAlign(CENTER);

    text(titulo1, EjeX, EjeY);
    text(Historia, EjeX, EjeY + 50);
    text(titulo2, EjeX + 640, EjeY );
    text(MiniJuego, EjeX + 640, EjeY + 50);
  }

  void reinicioDeVariables() {
    botonVolver = false;
  }

  boolean botonVolver() {

    if (botonVolver && mouseX > 20 && mouseX < 20 + 70 && mouseY > 20 && mouseY < 70) {
      return true;
    } else {
      return false;
    }
  }
}
