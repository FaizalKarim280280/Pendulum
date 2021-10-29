
Pendulum ob;

void setup(){
  
  size(1000, 800);
  
  // 300, 50, 200, 0.661
  ob = new Pendulum(300, 30, 220, 0); 

}


void draw(){
  
  background(61);
  translate(500, 400);
  
  
  ob.run();
  
}
