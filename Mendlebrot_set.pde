float threshold = 20; //if iteration exceedes threshold then c is classed as diverging
int maxIter = 100; //number of iterations to determine if c diverges

void setup(){
  size(800,800);
  colorMode(HSB);
  strokeWeight(1);
}

void draw(){
  background(0);
  for(int x=0; x<width; x++){
    for(int y=0; y<height; y++){
      
      float a = map(x, 0, width, -2, 2);
      float b = map(y, 0, height, 2, -2); //flip y axis
      
      Complex c = new Complex(a,b);
      Complex z = new Complex(0,0);
     
      int i=0;
      while(i < maxIter){
        z.square();
        z.add(c);
        
        if(z.getMag() > threshold){
          break;
        }
        
        i++;
      }
      float brightness = map(i, 0, maxIter, 0, 255);
      stroke(0,0,brightness);
      point(x,y);
    }
  }
  
  noLoop();
}
