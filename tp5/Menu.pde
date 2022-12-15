class Menu {
  ///////////////////////////////////////////////////////////////////////
  //////////********* declaracion de objetos*********///////////////////
  //////////////////////////////////////////////////////////////////////
  Relato relato;
  MiniJuego miniJuego;
  Pantalla pantalla;
  Instrucciones instrucciones;
  Extra extra;
  Creditos creditos;

  //////////////////////////////////////////////////////////////////////////////
  //////////********* declaracion de Atributos*********////////////////////////
  /////////////////////////////////////////////////////////////////////////////
  PImage img_fondo, img_iniciar, img_instrucciones, img_Extra, img_creditos, volver;
  boolean botonIniciar, botonInstrucciones, botonExtra, botonCreditos, botonVolverInicio, botonVolverCreditos, botonVolverExtra, botonVolverInstrucciones;

  int botonActivo;

  /////////////////************CONSTRUCTOR***********////////////////////////////////

  Menu() {
    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de objetos*********///////////////
    //////////////////////////////////////////////////////////////////////
    relato = new Relato();
    miniJuego = new MiniJuego();
    instrucciones = new Instrucciones();
    extra = new Extra();
    creditos = new Creditos();
    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de IMG*********///////////////////
    //////////////////////////////////////////////////////////////////////
    img_fondo = loadImage("Img_Menu/menu.jpg");
    img_iniciar = loadImage("Img_Menu/Inicio.png");
    img_instrucciones= loadImage("Img_Menu/Instrucciones.png");
    img_Extra = loadImage("Img_Menu/Extra.png");
    img_creditos = loadImage("Img_Menu/Creditos.png");
    volver = loadImage("Img_Menu/volver.png");
    ///////////////////////////////////////////////////////////////////////
    //////////*********Inicianilizacion de Booleans*********///////////////
    //////////////////////////////////////////////////////////////////////
    botonIniciar = false;
    botonInstrucciones = false;
    botonExtra = false;
    botonCreditos = false;
    botonVolverInicio = false;
    botonVolverCreditos = false;
    botonVolverExtra = false ;
    botonVolverInstrucciones = false;

    botonActivo =0;
  }

  /////////////////************METODOS***********////////////////////////////////

  void dibujar() {
    construccionDeMenu();

    if (botonActivo != 0) {
      MostrarPantallaActiva();
    }
  }


  void construccionDeMenu() {
    image(img_fondo, 0, 0, width, height);
    construccionDeBotones();
  }

  void construccionDeBotones() {
    hover_Botones( img_iniciar, 283, 184, 450, 84, 450, 266);
    hover_Botones(img_instrucciones, 283, 275, 454, 84, 450, 357);
    hover_Botones(img_Extra, 283, 366, 454, 84, 450, 449);
    hover_Botones(img_creditos, 283, 459, 454, 84, 450, 541);
  }


  ///////////////////////////////////////////////////////////////////////
  //////////********* Al pasar por arriba de los botones*********///////
  //////////////////////////////////////////////////////////////////////
  void hover_Botones(PImage boton, int X, int Y, int TAMx, int TAMy, int Parametro1, int Parametro2) {
    if (mouseX > X && mouseX < X + Parametro1 && mouseY > Y && mouseY < Parametro2) {
      image(boton, X, Y, TAMx, TAMy);
    }
  }
  ///////////////////////////////////////////////////////////////////////
  /////////********* Al hacer click en los botones*********////////////
  //////////////////////////////////////////////////////////////////////
  void click_Botones() {
    botonIniciar = (mouseX > 283 && mouseX < 283 + 450 && mouseY > 184 && mouseY < 266) &&  botonActivo == 0;
    botonInstrucciones = (mouseX > 283 && mouseX < 283 + 450 && mouseY > 275 && mouseY < 357) && botonActivo == 0 ;
    botonExtra = (mouseX > 283 && mouseX < 283 + 450 && mouseY > 366 && mouseY < 449) && botonActivo == 0;
    botonCreditos = (mouseX > 283 && mouseX < 283 + 450 && mouseY > 459 && mouseY < 541) && botonActivo == 0;
    botonVolverCreditos = creditos.botonVolver();
    botonVolverExtra = extra.botonVolver();
    botonVolverInstrucciones = instrucciones.botonVolver();
    botonVolverInicio = relato.botonVolver();

    if (botonIniciar &&  botonActivo == 0  ) {  
      botonActivo = 1;
    } else if (botonInstrucciones &&  botonActivo == 0) {
      botonActivo = 2;
    } else if (botonExtra &&  botonActivo == 0) {
      botonActivo = 3;
    } else if (botonCreditos &&  botonActivo == 0 || relato.botonFinal()  &&  botonActivo != 6) {
      botonActivo = 4;
    } else if (botonVolverInicio || botonVolverCreditos || botonVolverExtra ||  botonVolverInstrucciones ) {
      botonActivo = 5;
    } else if (relato.minijuego()) {
      botonActivo = 6; 
    } else if (miniJuego.siPerdio()) {
      botonActivo = 1;
      relato.perdio();
    } else if (miniJuego.siGano()) {
      botonActivo = 1;
      relato.gano();
    } 

    if ( botonActivo == 6) {
      miniJuego.click();
    }
    extra.click();
    relato.click();
  }

  ///////////////////////////////////////////////////////////////////////
  //////////********* Una vez hecho click en los botones*********///////
  //////////////////////////////////////////////////////////////////////
  void MostrarPantallaActiva() {

    if ( botonActivo == 1  ) {
      relato.dibujar();
    } else if (botonActivo == 2 ) {
      instrucciones.dibujar();
    } else if (botonActivo == 3) {
      extra.dibujar();
    } else if (botonActivo == 4 ) {
      creditos.dibujar();
    } else if (botonActivo == 5) {
      botonActivo = 0;
      relato.reincioDeVariables();
      instrucciones.reinicioDeVariables();
      extra.reinicioDeVariables();
      creditos.reincioDeVariables();
      miniJuego. reinicioDeVariables();
    } else if (botonActivo == 6 ) {
      miniJuego.dibujar();
    } 

  }
}
