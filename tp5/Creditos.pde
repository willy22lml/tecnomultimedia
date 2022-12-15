class Creditos {

  //////////////////////////////////////////////////////////////////////////////
  //////////********* declaracion de Atributos*********////////////////////////
  /////////////////////////////////////////////////////////////////////////////
  PImage fondo, volver;
  String Autor, Legajo, Inspirado;
  int ejeYCreditos, Veloejey;///botonActivo;
  boolean botonVolver;

  /////////////////************CONSTRUCTOR***********////////////////////////////////
  Creditos() {
    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de IMG*********///////////////////
    //////////////////////////////////////////////////////////////////////
    fondo = loadImage("fondos/fondoCreditos.jpg");
    volver = loadImage("Img_Menu/volver.png");

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de texto*********///////////////////
    //////////////////////////////////////////////////////////////////////
    Autor = "Juego Creado por: \n Kevin Jason Williams ";
    Legajo = "N° de Legajo: \n 91377/4 ";
    Inspirado = "inspirado en el trabajo final de la catedra \n lenguaje multimedial 1";

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de enteros*********///////////////////
    //////////////////////////////////////////////////////////////////////
    ejeYCreditos = 600;
    Veloejey = 3;

    botonVolver = false;
  }

  /////////////////************METODOS***********////////////////////////////////
  void dibujar() {
    image(fondo, 0, 0, width, height); 
    construccionDeCreditos();
    
    image(volver, 20, 20, 50, 50);
    botonVolver = true;
  }

  void construccionDeCreditos() {

    fill(0);
    textSize(30);
    textAlign(CENTER);

    text(Autor, 500, ejeYCreditos);
    text(Legajo, 500, ejeYCreditos + 100);
    text(Inspirado, 500, ejeYCreditos + 200);

    logicaCreditos();
  }

  void logicaCreditos() {// mueve los creditos hacia arriba y los reinicia.
    ejeYCreditos--;
    ejeYCreditos = ejeYCreditos - Veloejey;

    if (ejeYCreditos < -300) {
      ejeYCreditos= 600;
    }
  }

  boolean botonVolver() {

    if (botonVolver && mouseX > 20 && mouseX < 20 + 70 && mouseY > 20 && mouseY < 70) {
      return true;
    } else {
      return false;
    }
  }

  void reincioDeVariables() {
    ejeYCreditos = 600;
    Veloejey = 3;
    botonVolver =  false;
  }
}
