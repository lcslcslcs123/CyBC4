int num=8;
PImage[] img=new PImage[num];
int s;


void setup(){
  size(800,800);
  background(255);
  for(int i = 0;i<8;i++){
    img[i]=loadImage(i+".png");
  }
   img[0].resize(width, height);
}

void draw() {
  background(255);
  s = int(map(mouseX, 0, width, 1, 100));
  for (int y = 0; y < img[0].height; y+=s ) {
      for (int x = 0; x < img[0].width; x+=s) {
      int loc = x + (y * img[0].width);
      
      int b = int(brightness(img[0].pixels[loc]));
      
      
      
      int q = int(map(b, 0, 255, 10, 0));
      
      for(int w=1;w<8;w++){
      if(q==w+2){
        image(img[8-w],x,y,s,s);
      }
      
      }
     
      
      
     
    }
  }
}
