void SlideDeImg (){
  ///////////////Slide de img////////////////
  if (mouseX>width*0.9) {
    NumImg++;
    if (NumImg == MaxImg+1) {
      NumImg=1;
    }
  } else if (mouseX<width*0.1) {
    NumImg--;
    if (NumImg ==0) {
      NumImg=MaxImg;
    }
  }
  imgSlide = loadImage("img0"+NumImg+".jpg"); 




}
