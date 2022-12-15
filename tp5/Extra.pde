class Extra {

  /////////////////////////////////////////////////////////////////////////////
  //////////********* declaracion de Atributos*********////////////////////////
  /////////////////////////////////////////////////////////////////////////////
  int img = 9;
  int imgNumero = 0;
  int imgSiguiente;
  PImage [] imgExtra = new PImage[img] ;
  PImage botonDerecha, volver;
  boolean pasarDerecha, botonVolver;

  /////////////////************CONSTRUCTOR***********////////////////////////////////

  Extra() {   

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de IMG*********///////////////////
    //////////////////////////////////////////////////////////////////////

    for (int i = 0; i < imgExtra.length; i++ ) {
      imgExtra[i] = loadImage("Extra/img" + i + ".jpg");
    }

    botonDerecha = loadImage("botones/BotonImg.jpg");
    volver = loadImage("Img_Menu/volver.png");

    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de entero*********///////////////////
    //////////////////////////////////////////////////////////////////////
    imgSiguiente =0;

    botonVolver = false;
  }

  /////////////////************METODOS***********////////////////////////////////
  void dibujar() {

    logicaExtra();
    botones();
    botonVolver = true;
    image(volver, 20, 20, 50, 50);
  }

  void botones() {
    image( botonDerecha, 880, 250, 100, 100);
  }

  void click() {
    pasarDerecha = (mouseX > 880 && mouseX < 880 + 100 && mouseY > 250 && mouseY < 350);


    if (pasarDerecha) {
      imgNumero++ ;
      if (imgNumero >= imgExtra.length) {
        imgNumero = 0;
      }
    }
  }

  void logicaExtra() {

    image(imgExtra [imgNumero], 0, 0, width, height);
  }

  void reinicioDeVariables() {
    img = 9;
    imgNumero = 0;
    imgSiguiente = 0;
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
