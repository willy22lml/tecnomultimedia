int AlienCorre = 10;
int AlienDisparaSecuencia = 4;
int imgCorreAlien = 0;
int imgDisparaAlien = 0;


int AlienDireX= 900;
int AlienDireY = 330;
int AlienVelox = 3;
int AlienVeloY= 3;
int AlienVeloXenELaire = 3 ;
int AlienVeloYenELaire = 3 ;


boolean AlienSiMovDer, AlienSiMovIzq, QuietoDerAlien;
boolean QuietoIzqAlien = true ;


PImage  AlienQuietoDer, AlienQuietoIzq, AlienSaltoDer, AlienSaltoIzq, AlienGana ;
PImage [] AlienCorreDer = new PImage [AlienCorre];
PImage [] AlienCorreIzq = new PImage [AlienCorre];
PImage [] AlienDisparaDer = new PImage [AlienDisparaSecuencia];
PImage [] AlienDisparaIzq = new PImage [AlienDisparaSecuencia];

//var del disparo /////////////
float n;
boolean chequeoAlien = false;
boolean DisparoDerAlien = false;
boolean DisparoIzqAlien = false;

float VeloBalaDerAlien =50; 
float VeloBalaIzqAlien =-50; 

float ejeXbala1Alien ;
float ejeYbala1Alien = AlienDireY + 70;
float ejeXbala2Alien;
float ejeYbala2Alien = AlienDireY + 70;

//float l= map(n, AlienDireX, AlienDireY, ejeXbala1Alien, ejeYbala1Alien);

float vidaAlien = 3;
boolean alienmuerto = false;

///////////////////////////////////

void CargaDeImgAlien () {

  //Alien quieto
  AlienQuietoDer = loadImage("data/alien/quieto/A/Quieto0.png");
  AlienQuietoIzq = loadImage("data/alien/quieto/B/Quieto0.png");

  // salto alien
  AlienSaltoDer = loadImage("data/alien/salto/A/saltar0.png");
  AlienSaltoIzq = loadImage("data/alien/salto/B/saltar0.png");

  //alien corre a la derecha
  for (int i=0; i< AlienCorreDer.length; i++) {
    AlienCorreDer [i] = loadImage("data/alien/correr/A/corre" + i + ".png");
  }
  //alien corre a la izquierda
  for (int i=0; i< AlienCorreIzq.length; i++) {
    AlienCorreIzq [i] = loadImage("data/alien/correr/B/corre" + i + ".png");
  }

  //alien dispara a la derecha
  for (int i=0; i< AlienDisparaDer.length; i++) {
    AlienDisparaDer[i] = loadImage("data/alien/dispara/A/dispara" + i + ".png");
  }
  //alien dispara a la Izquierda
  for (int i=0; i< AlienDisparaIzq.length; i++) {
    AlienDisparaIzq [i] = loadImage("data/alien/dispara/B/dispara" + i + ".png");
  }

  AlienGana = loadImage("data/alien/AlienGana.jpg");
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void EstaQuietoAlien () {

  if (QuietoDerAlien) {
    image(  AlienQuietoDer, AlienDireX, AlienDireY, 135, 135);
  } else if (QuietoIzqAlien) {
    image( AlienQuietoIzq, AlienDireX, AlienDireY, 135, 135);
  } else if (AlienSiMovDer) {

    QuietoDerAlien= true;
  } else if (AlienSiMovIzq) {

    QuietoIzqAlien= true;
  } 


  //Logica del salto "siempre vuelve a la posY 300"
  if (AlienDireY< 330) {
    AlienDireY ++;

    AlienDireY = AlienDireY + AlienVeloYenELaire;


    //Logica de las IMG en el salto cuando cae
    if (AlienSiMovDer) {
      QuietoDerAlien= false;
      image( AlienSaltoDer, AlienDireX, direY, 135, 135);
    } else if (AlienSiMovIzq) {
      QuietoIzqAlien= false;
      image( AlienSaltoIzq, AlienDireX, AlienDireY, 135, 135);
    }
  }
}





////////////////////////////////////////////////////////////////////////////////////////////
void MovDerAlien( ) {

  //Slide de imagenes "animacion alien camina a la derecha"
  image(AlienCorreDer [imgCorreAlien], AlienDireX, AlienDireY, 135, 135);
  imgCorreAlien++;
  if (imgCorreAlien >= AlienCorreDer.length) {
    imgCorreAlien = 0;
  }

  //direccion del personaje
  AlienDireX ++;

  //velocidad del personaje 
  AlienDireX= AlienDireX + AlienVelox;

  //confirmacion del lado que se mueve
  AlienSiMovDer = true;
  AlienSiMovIzq = false;
}
/////////////////////////////////////////////////////////////////////////////////////////
void MovIzqAlien() {
  //Slide de imagenes "animacion vaquero camina a la izquierda"
  image(AlienCorreIzq[imgCorreAlien], AlienDireX, AlienDireY, 135, 135);
  imgCorreAlien++;
  if (imgCorreAlien >= AlienCorreIzq.length) {
    imgCorreAlien = 0;
  }

  //direccion del personaje
  AlienDireX--;

  //velocidad del personaje 
  AlienDireX = AlienDireX - AlienVelox;

  //confirmacion del lado que se mueve
  AlienSiMovIzq= true;
  AlienSiMovDer= false;
}


///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////

void SaltoAlien() {

  if (AlienSiMovDer) {
    QuietoDerAlien = false;
    image( AlienSaltoDer, AlienDireX, AlienDireY, 150, 150);
  } else if (AlienSiMovIzq) {
    QuietoIzqAlien= false;
    image( AlienSaltoIzq, AlienDireX, AlienDireY, 135, 135);
  }

  //velocidad del salto del personaje 
  AlienDireY = AlienDireY - AlienVeloY;

  //logica del salto
  if (AlienDireY <= 150) {
    AlienVeloY = -3;
  } else if (AlienDireY >= 330) {
    AlienVeloY = +3;
  }
}



void DisparoAlien() {

  if (AlienSiMovDer) {
    //Slide de imagenes "animacion vaquero dispara a la derecha"
    image(AlienDisparaDer[imgDisparaAlien], AlienDireX, direY, 135, 135);
    imgDisparaAlien++;
    if (imgDisparaAlien >= AlienDisparaDer.length) {
      imgDisparaAlien = 0;
    }
    QuietoDerAlien= false;
  } else if (AlienSiMovIzq) {

    //Slide de imagenes "animacion vaquero dispara a la izquierda"
    image(AlienDisparaIzq[imgDisparaAlien], AlienDireX, AlienDireY, 135, 135);
    imgDisparaAlien++;
    if (imgDisparaAlien >= AlienDisparaIzq.length) {
      imgDisparaAlien = 0;
    }
    QuietoIzqAlien= false;
  }
}


void DisparosAlien() { // disparo


  if (DisparoDerAlien == true && AlienSiMovDer) {
    ejeXbala1Alien += VeloBalaDerAlien;
    fill(255, 0, 222);
    rect ( ejeXbala1Alien+80, ejeYbala1Alien, 22, 6);
  } else  if (DisparoIzqAlien == true && AlienSiMovIzq) {
    ejeXbala2Alien += VeloBalaIzqAlien;
    fill(255, 0, 222);
    rect ( ejeXbala2Alien+80, ejeYbala2Alien, 22, 6);
  }
}

void SeguimientoDeLaBalaAlien () {

  if (AlienSiMovDer) {
    if (ejeXbala1Alien >= width) {
      DisparoDerAlien = false;
      //ejeXbala1 = m;
      chequeoAlien = false;
    }
  }


  if (AlienSiMovIzq) {
    if (ejeXbala2Alien <= -10 ) {
      DisparoIzqAlien = false;
      //ejeXbala2 = m;
      chequeoAlien = false;
    }
  }
}

void impacto2() {

  float mDa = dist(ejeXbala1Alien, ejeYbala1Alien, direX, direY );
  //println("mAd", mDa);

  float mIa = dist(ejeXbala2Alien, ejeYbala2Alien, direX, direY );
  //println("mAi", mIa);


  if (mDa <= direX && mDa <= 150) {

    background(255, 0, 0);
    if (vidaVaquero > 0) {

      vidaVaquero = vidaVaquero - 0.50;
    } else {

      vaqueromuerto  = true;
    }
  } else if (mIa <= direX && mDa <= 200) {

    background(255, 0, 0);
    if (vidaVaquero > 0) {

      vidaVaquero = vidaVaquero - 0.50;
    } else {

      vaqueromuerto  = true;
    }
  }
}


void MovimientosAlien() {


  if (keyCode == RIGHT && AlienDireY >= 300 ) {//movimiento en el suelo hacia la derecha
    MovDerAlien ();
    QuietoDerAlien = false;
    QuietoIzqAlien = false;
  } else if (keyCode == LEFT && AlienDireY >= 300 ) {//movimiento en el suelo hacia la izquierda
    MovIzqAlien();
    QuietoIzqAlien = false;
    QuietoDerAlien = false;
  } else if (keyCode == UP) {//movimiento hacia arriba "salto"
    SaltoAlien();
  } else if (keyCode == RIGHT && AlienDireY <= 300) {//movimiento en el aire hacia la derecha
    //direccion del personaje
    AlienDireX ++;
    //velocidad del personaje 
    AlienDireX = AlienDireX + AlienVeloXenELaire;
  } else if (keyCode == LEFT && AlienDireY <= 300) {//movimiento en el aire hacia la Izquierda
    //direccion del personaje
    AlienDireX --;
    //velocidad del personaje 
    AlienDireX = AlienDireX - AlienVeloXenELaire;
  } else if ( key == 'ñ' || key == 'Ñ') {

    DisparoAlien();

    if (AlienSiMovDer) {

      DisparoDerAlien = true;

      if (chequeoAlien == false) {
        ejeXbala1Alien = AlienDireX; 
        chequeoAlien =! chequeoAlien;
      }
    } else if (AlienSiMovIzq) {

      DisparoIzqAlien = true;

      if (chequeoAlien == false) { 
        ejeXbala2Alien = AlienDireX;
        chequeoAlien =! chequeoAlien;
      }
    }
  }
}
