int VaqueroCorre = 10; 
int VaqueroDisparaSecuencia = 8;
int imgCorreVaquero = 0;
int imgDisparaVaquero = 0;

int direX;
int direY = 300;
int velox = 3;
int veloY= 3;
int veloXenELaire = 3 ;
int veloYenELaire = 3 ;

boolean SiMovDer, SiMovIzq, QuietoIzq;
boolean QuietoDer = true ;

PImage Fondo, VaqueroQuietoDer, VaqueroQuietoIzq, VaqueroSaltoDer, VaqueroSaltoIzq, VaqueroGana ;
PImage [] VaqueroCorreDer = new PImage [VaqueroCorre];
PImage [] VaqueroCorreIzq = new PImage [VaqueroCorre];
PImage [] VaqueroDisparaDer = new PImage [VaqueroDisparaSecuencia];
PImage [] VaqueroDisparaIzq = new PImage [VaqueroDisparaSecuencia];



//var del disparo /////////////
boolean chequeo = false;
boolean DisparoDer = false;
boolean DisparoIzq = false;

float VeloBalaDer =50; 
float VeloBalaIzq =-50; 

float ejeXbala1;
float ejeYbala1 = direY + 70;
float ejeXbala2 ;
float ejeYbala2 = direY + 70;
///////////////////////////////////

float vidaVaquero = 3;
boolean vaqueromuerto = false;



void CargaDeImgVaquero () {

  //carga img de fondo "paisaje"
  Fondo = loadImage("fondo.png");

  //vaquero quieto
  VaqueroQuietoDer = loadImage("data/vaquero/quieto/A/Quieto0.png");
  VaqueroQuietoIzq = loadImage("data/vaquero/quieto/B/Quieto0.png");

  // salto vaquero
  VaqueroSaltoDer = loadImage("data/vaquero/salto/A/saltar0.png");
  VaqueroSaltoIzq = loadImage("data/vaquero/salto/B/saltar0.png");

  //vaquero corre a la derecha
  for (int i=0; i< VaqueroCorreDer.length; i++) {

    VaqueroCorreDer [i] = loadImage("data/vaquero/correr/A/corre" + i + ".png");
  }
  //vaquero corre a la izquierda
  for (int i=0; i< VaqueroCorreIzq.length; i++) {
    VaqueroCorreIzq [i] = loadImage("data/vaquero/correr/B/corre" + i + ".png");
  }

  //vaquero dispara a la derecha
  for (int i=0; i< VaqueroDisparaDer.length; i++) {
    VaqueroDisparaDer[i] = loadImage("data/vaquero/dispara/A/dispara" + i + ".png");
  }
  //vaquero dispara a la Izquierda
  for (int i=0; i< VaqueroDisparaIzq.length; i++) {
    VaqueroDisparaIzq [i] = loadImage("data/vaquero/dispara/B/dispara" + i + ".png");
  }

  VaqueroGana = loadImage("data/vaquero/vaqueroGana.jpg");
}


/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
void EstaQuietoVaquero () {

  if (QuietoDer) {
    image( VaqueroQuietoDer, direX, direY, 180, 180);
  } else if (QuietoIzq) {
    image( VaqueroQuietoIzq, direX, direY, 180, 180);
  } else if (SiMovDer) {

    QuietoDer= true;
  } else if (SiMovIzq) {

    QuietoIzq= true;
  } 


  //Logica del salto "siempre vuelve a la posY 300"
  if (direY< 300) {
    direY ++;

    direY = direY + veloYenELaire;


    //Logica de las IMG en el salto cuando cae
    if (SiMovDer) {
      QuietoDer= false;
      image( VaqueroSaltoDer, direX, direY, 180, 180);
    } else if (SiMovIzq) {
      QuietoIzq= false;
      image( VaqueroSaltoIzq, direX, direY, 180, 180);
    }
  }
  ;
}


/////////////////////////////////////////////////////////////////////////////////////////////////
void MovDerVaquero() {

  //Slide de imagenes "animacion vaquero camina a la derecha"
  image(VaqueroCorreDer [imgCorreVaquero], direX, direY, 180, 180);
  imgCorreVaquero++;
  if (imgCorreVaquero >= VaqueroCorreDer.length) {
    imgCorreVaquero = 0;
  }



  //direccion del personaje
  direX ++;

  //velocidad del personaje 
  direX= direX + velox;

  //confirmacion del lado que se mueve
  SiMovDer = true;
  SiMovIzq = false;
}
/////////////////////////////////////////////////////////////////////////////////////////
void MovIzqVaquero() {
  //Slide de imagenes "animacion vaquero camina a la izquierda"
  image(VaqueroCorreIzq[imgCorreVaquero], direX, direY, 180, 180);
  imgCorreVaquero++;
  if (imgCorreVaquero >= VaqueroCorreIzq.length) {
    imgCorreVaquero = 0;
  }

  //direccion del personaje
  direX--;

  //velocidad del personaje 
  direX = direX - velox;

  //confirmacion del lado que se mueve
  SiMovIzq= true;
  SiMovDer= false;
}


///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////



void SaltoVaquero() {

  if (SiMovDer) {
    QuietoDer= false;
    image( VaqueroSaltoDer, direX, direY, 180, 180);
  } else if (SiMovIzq) {
    QuietoIzq= false;
    image( VaqueroSaltoIzq, direX, direY, 180, 180);
  }

  //velocidad del salto del personaje 
  direY = direY - veloY;

  //logica del salto
  if (direY <= 150) {
    veloY = -10;
  } else if (direY >= 300) {
    veloY = +5;
  }
}



void DisparoVaquero() {

  if (SiMovDer) {
    //Slide de imagenes "animacion vaquero dispara a la derecha"
    image(VaqueroDisparaDer[imgDisparaVaquero], direX, direY, 180, 180);
    imgDisparaVaquero++;
    if (imgDisparaVaquero >= VaqueroDisparaDer.length) {
      imgDisparaVaquero= 0;
    }
    QuietoDer= false;
  } else if (SiMovIzq) {

    //Slide de imagenes "animacion vaquero dispara a la izquierda"
    image(VaqueroDisparaIzq[imgDisparaVaquero], direX, direY, 180, 180);
    imgDisparaVaquero++;
    if (imgDisparaVaquero >= VaqueroDisparaIzq.length) {
      imgDisparaVaquero = 0;
    }
    QuietoIzq= false;
  }
}



void Disparos() { // disparo


  if (DisparoDer == true && SiMovDer ) {
    ejeXbala1 += VeloBalaDer;
    fill(255, 167, 23);
    rect ( ejeXbala1+80, ejeYbala1, 22, 6);
  } else  if (DisparoIzq == true && SiMovIzq) {
    ejeXbala2 += VeloBalaIzq;
    fill(255, 167, 23);
    rect ( ejeXbala2+80, ejeYbala2, 22, 6);
  }
}

void SeguimientoDeLaBala () {

  if (SiMovDer) {
    if (ejeXbala1 >= 1400) {
      DisparoDer = false;
      //ejeXbala1 = m;
      chequeo = false;
    }
  }


  if (SiMovIzq) {
    if (ejeXbala2 <= -10 ) {
      DisparoIzq = false;
      //ejeXbala2 = m;
      chequeo = false;
    }
  }
}




void impacto1() {

  float mD = dist( ejeXbala1, ejeYbala1, AlienDireX, AlienDireY );
  //println("mV", mD);
  float mI = dist( ejeXbala2, ejeYbala2, AlienDireX, AlienDireY );
  //println("mV", mI);

  if (mD <= AlienDireX && mD <= 100) {

    background(0, 255, 0);
    if (vidaAlien > 0) {

      vidaAlien = vidaAlien - 0.50;
    } else {

      alienmuerto  = true;
    }
  } else if (mI <= AlienDireX && mI <= 100) {

    background(0, 255, 0);

    if (vidaAlien > 0) {

      vidaAlien = vidaAlien - 0.50;
    } else {

      alienmuerto  = true;
    }
  }
}

void muerto() {

  if (alienmuerto == true) {

    image(VaqueroGana, 0, 0, 1300, 600);
    fill(255);
    textSize(30);
    textAlign(CENTER);
    textFont(Font1);
    text(GanaVaquero, 600, 300 );
  }

  if (vaqueromuerto == true) {

    image(AlienGana, 0, 0, 1300, 600);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    textFont(Font1);
    text(GanaAlien, 600, 300 );
  }
}



void MovimientosVaquero() {

  if (key == 'd' ||key == 'D'  && direY >= 300) {//movimiento en el suelo hacia la derecha
    MovDerVaquero();

    QuietoDer = false;
    QuietoIzq = false;
  } else if (key == 'a' ||key == 'A' && direY >= 300 ) {//movimiento en el suelo hacia la izquierda
    MovIzqVaquero();
    QuietoIzq = false;
    QuietoDer = false;
  } else if (key == 'w' ||key == 'W') {//movimiento hacia arriba "salto"
    SaltoVaquero();
  } else if (key == 'd' ||key == 'D' && direY <= 300) {//movimiento en el aire hacia la derecha

    //direccion del personaje
    direX ++;
    //velocidad del personaje 
    direX = direX + veloXenELaire;
  } else if (key == 'a' ||key == 'A' && direY <= 300) {//movimiento en el aire hacia la Izquierda

    //direccion del personaje
    direX --;
    //velocidad del personaje 
    direX = direX - veloXenELaire;
  } else if ( keyCode == ' ' ) {//disparo vaquero

    DisparoVaquero();
    if (SiMovDer) {

      DisparoDer = true;

      if (chequeo == false) {
        ejeXbala1 = direX; 
        chequeo =! chequeo;
      }
    } else if (SiMovIzq) {

      DisparoIzq = true;

      if (chequeo == false) { 
        ejeXbala2 = direX;
        chequeo =! chequeo;
      }
    }
  }
}
