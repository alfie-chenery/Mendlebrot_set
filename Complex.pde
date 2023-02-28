class Complex{
  float Re;
  float Im;
  
  Complex(float a, float b){
    Re = a;
    Im = b;
  }
  
  void square(){
    float temp_Re = Re*Re - Im*Im;
    Im = 2 * Re * Im;
    Re = temp_Re;
  }
  
  void add(Complex c){
    Re += c.Re;
    Im += c.Im;
  }
  
  float getMag(){
    //return sqrt(Re*Re + Im*Im); 
    return abs(Re+Im);
  }
  
  
}
