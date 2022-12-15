class Relato {
  MiniJuego miniJuego;
  Pantalla pantallaActiva;
  Pantalla []  Pantallas = new  Pantalla [10];
  int siguientePantallaRelato;
  boolean botonVolver, siPerdio, siGano;
  PImage volver, Img_botonFinal;

  /////////////////************CONSTRUCTOR***********////////////////////////////////
  Relato() {
    botonVolver = false;
    siPerdio = false;
    siGano = false;
    volver = loadImage("Img_Menu/volver.png");
    Img_botonFinal = loadImage("botones/BotonFinal.png");

    miniJuego = new MiniJuego();

    pantallaActiva = new Pantalla("relato/pantalla_2", "Don seguro ya se harto \n del ruido molesto de luis pero no sabe si...", 1, 2, "quejarse", "no \n quejarse");

    Pantallas [0] = new Pantalla("relato/pantalla_2", "Don seguro ya se harto \n del ruido molesto de luis pero no sabe si...", 1, 2, "quejarse", "no \n quejarse");
    Pantallas [1] = new Pantalla("relato/pantalla_3", "Don Seguro no pudo descansar \nni un segundo en toda la noche y no sabe si...", 3, 4, "no \n    ir a trabajar", "ir \n a trabajar");
    Pantallas [2] = new Pantalla("relato/pantalla_6", "Comienza una discusion muy fuerte \n en la que Don Seguro decide...", 1, 5, "pelear", "irse");
    Pantallas [3] = new Pantalla("relato/pantalla_4", "Don Seguro se lastima en su trabajo \n por no estar bien descansado.", 3, 3, "", "");
    Pantallas [4] = new Pantalla("relato/pantalla_5", "Don Seguro es despedido por faltar \n injustifcadamente a su trabajo.", 4, 4, "", "");
    Pantallas [5] = new Pantalla("relato/pantalla_7", "Debido a la pelea comienza \n un incendio en el depto de Luis.", 6, 7, "ayudar", "irse");
    Pantallas [6] = new Pantalla("relato/pantalla_8", "El incendio se expandio a todo el edificio\n dejando a todos en la calle.", 6, 6, "", "");
    Pantallas [7] = new Pantalla("relato/pantalla_9", "\n Instrucciones", 7, 7, "", "");
    Pantallas [8] = new Pantalla("relato/pantalla_10", "Don Seguro no pudo controlar \n el incendio.", 8, 8, "", "");
    Pantallas [9] = new Pantalla("relato/pantalla_11", "Don Seguro pudo controlar \n el incendio.", 9, 9, "", "");
  }


  /////////////////************METODOS***********////////////////////////////////

  void dibujar() {
    pantallaActiva.dibujar();
    mostrarBotones();
  }


  void click() {
    if (siGano == false &&  siPerdio == false) {
      siguientePantallaRelato = pantallaActiva.mouse();
      pantallaActiva = Pantallas[siguientePantallaRelato];
    } else if (siGano) {
      siguientePantallaRelato = 9;

      if ( siguientePantallaRelato == 9) {
        pantallaActiva = Pantallas[9];
        miniJuego.reinicioDeVariables();
      }
    } else if (siPerdio) {
      siguientePantallaRelato = 8;

      if ( siguientePantallaRelato == 8) {
        pantallaActiva = Pantallas[8];
        miniJuego.reinicioDeVariables();
      }
    }
  }

  void mostrarBotones() {
    botonVolver = true;
    image(volver, 20, 20, 50, 50);

    if (siguientePantallaRelato == 3 || siguientePantallaRelato == 4 || siguientePantallaRelato == 6 || siguientePantallaRelato == 8 || siguientePantallaRelato == 9) {
      image( Img_botonFinal, 450, 400, 100, 100);
    }
  }

  boolean  botonFinal() { 
    if (mouseX > 450 && mouseX < 450 + 100 && mouseY > 400 && mouseY < 500) {
      return true;
    } else {
      return false;
    }
  }


  boolean botonVolver() {
    if (botonVolver && mouseX > 20 && mouseX < 20 + 70 && mouseY > 20 && mouseY < 70) {
      return true;
    } else {
      return false;
    }
  }


  boolean minijuego() {
    if (siguientePantallaRelato == 7) {
      return true;
    } else {
      return false;
    }
  }

  void perdio() {
    siPerdio = true;
  }

  void gano() {
    siGano = true;
  }


  void reincioDeVariables() {
    siguientePantallaRelato = 0;
    botonVolver = false;
    siGano = false;
    siPerdio = false;
  }
}
