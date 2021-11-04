
Pendulum ob1, ob2, ob3, ob4, ob5, ob6;

void setup(){
  
  size(700, 600);
  
  // 300, 50, 200, 0.661
  ob1 = new Pendulum(300, 35, 200, 0); 
  ob2 = new Pendulum(300, 35, 201, 0);
  ob3 = new Pendulum(300, 35, 202, 0);
  ob4 = new Pendulum(300, 35, 203, 0);
  ob5 = new Pendulum(300, 35, 204, 0);
  ob6 = new Pendulum(300, 35, 205, 0);
   
 
}


void draw(){
  
  background(61);
  translate(350, 200);
  
  ob1.run();
  ob2.run();
  ob3.run();
  ob4.run();
  ob5.run();
  ob6.run();
  
}
