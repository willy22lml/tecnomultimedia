class Pantalla {
  MiniJuego miniJuego;
  PImage fondo, Img_botonDerecho, Img_botonIzquierdo, Img_botonFinal;
  int ejeX, ejeY, opcionA, opcionB, siguientePantalla, fin;
  String textoDelRelato, decisionIzq, decisionDer;
  boolean mousePresionadoA, mousePresionadoB;



  Pantalla(String TipoDeFondo, String texto, int _opcionA, int _opcionB, String _decisionIzq, String _decisionDer ) {
    miniJuego = new MiniJuego();

    fondo = loadImage(TipoDeFondo + ".jpg");
    Img_botonDerecho = loadImage("botones/boton_derecho.png");
    Img_botonIzquierdo = loadImage("botones/boton_izquierdo.png");

    textoDelRelato = texto;
    opcionA = _opcionA;
    opcionB = _opcionB;
    decisionIzq = _decisionIzq;
    decisionDer = _decisionDer;


    ejeX = 550;
    ejeY = 30;
    fin = 0;

    mousePresionadoA = false;
    mousePresionadoB = false;
  }


  void dibujar() {
    construccionDelFondo();
  }


  void construccionDelFondo() {
    image(fondo, 0, 0, width, height);
    dibujarTextoDelRelato();
    finales();
    if (fin == 0) {
      dibujarBotonesDeDecisiones(decisionIzq, decisionDer);
    }
  }

  void finales() {
    if ( opcionB== 3 && opcionA == 3  ) {
      fin = 1;
    } else if ( opcionB == 4  && opcionA == 4 ) {
      fin = 1;
    } else if ( opcionB == 6 && opcionA == 6 ) {
      fin = 1;
    } else if ( opcionB == 7  && opcionA == 7 ) {
      fin = 1;
    } else if ( opcionB == 8  && opcionA == 8 ) {
      fin = 1;
    } else if ( opcionB == 9  && opcionA == 9 ) {
      fin = 1;
    }
  }

  void dibujarTextoDelRelato() {
    fill(254, 255, 8);
    rect(200, 5, 700, 90);
    fill(0);
    textSize(30);
    textAlign(CENTER);

    text(textoDelRelato, ejeX, ejeY);
  }


  void dibujarBotonesDeDecisiones(String boton1, String boton2) {
    textAlign(CENTER);
    image( Img_botonIzquierdo, 10, 250, 100, 100);
    text(boton1, 70, 310 );
    image( Img_botonDerecho, 890, 250, 100, 100);
    text(boton2, 930, 310 );
  }

  void clickBotones() {
    mousePresionadoA = (mouseX > 890 && mouseX < 890 + 100 && mouseY > 250 && mouseY < 350) ;
    mousePresionadoB = (mouseX > 10 && mouseX < 10 + 100 && mouseY > 250 && mouseY < 350) ;
  }

  int mouse() {
    clickBotones();

    if (mousePresionadoA) {
      return opcionA;
    } else if (mousePresionadoB) {
      return opcionB;
    } else {
      return 0;
    }
  }
}
