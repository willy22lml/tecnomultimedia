class MiniJuego {

  PImage fuego, depto, humo, ganaste, perdiste;
  int jugar, rePintar, tamanio, puntos, tiempo, contador, PosX, PosY;
  float tiempoDeJuego;

  MiniJuego() {
    fuego = loadImage("minijuego/fuego.png");
    depto = loadImage("minijuego/deptoLuis.jpg");
    humo = loadImage("minijuego/humo.png");
    ganaste = loadImage("minijuego/ganaste.jpg");
    perdiste = loadImage("minijuego/perdiste.jpg");


    jugar = 2;
    rePintar = 1;
    tamanio = 100;
    puntos = 0;
    tiempo = 0;
    contador = 0;
    tiempoDeJuego = 0;
    PosX = floor(random(50, 950));
    PosY = floor(random(50, 550));

    cursor(HAND);
  }

  void dibujar() {

    if ( jugar == 1 ||jugar == 2 && rePintar == 1 ) {
      image(depto, 0, 0, width, height);
      imagenes();
      puntos();
      tiempo();
    }

    if (siGano()) {
      image(ganaste, 0, 0, width, height);
    } else if (siPerdio()) {
      image(perdiste, 0, 0, width, height);
    }
  }


  void imagenes() {

    image(fuego, PosX, PosY, tamanio, tamanio);

    for ( int i = 0; i <= puntos; i++) {

      image(humo, floor(random(-50, 1000)), floor(random(-50, 600)), 350, 350);
    }
  }

  void puntos() {
    fill (255, 0, 0);
    textAlign(CENTER);
    textSize(18);
    text("PUNTOS: " + puntos, 250, 30);
  }

  void tiempo() {
    tiempoDeJuego = tiempoDeJuego - 0.10;
    contador = floor (tiempo - tiempoDeJuego);
    fill (255, 0, 0);
    textAlign(LEFT);
    textSize(18);
    text("TIEMPO: " +  contador, 20, 30);
  }

  void click() {
    if (jugar == 1 || jugar == 2) {
      if ( (mouseX > PosX - tamanio) && (mouseX < PosX + tamanio) && (mouseY > PosY - tamanio) && (mouseY < PosY + tamanio)) {
        puntos += 1;
        rePintar = 0;
        resfrecarFondo ();
      } else {
        jugar = jugar - 1;
      }
    }
  }


  void resfrecarFondo () {
    if (rePintar == 0) {
      PosX = floor(random(5, 750));
      PosY = floor(random(100, 550));
      rePintar = 1;
    }
  }

  boolean siGano() {

    if (contador <= 30 && puntos >= 20 ) {
      return true;
    } else {
      return false;
    }
  }

  boolean siPerdio() {
    if (contador >= 30 && puntos < 20) {
      return true;
    } else if (jugar == 0) {
      return true;
    } else {
      return false;
    }
  }


  void reinicioDeVariables() {
    jugar = 2;
    rePintar = 1;
    puntos = 0;
    contador = 0;
    tiempoDeJuego = 0;
  }
}
