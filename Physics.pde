
class Pendulum {
  float l,g, theta, r;
  float x,y;
  float acc = 0, velocity = 0;
  float dt = 0.1;
  
  public Pendulum(float l, float g, float t, float v){
    this.l = l;
    this.g = g;
    this.theta =  (float)Math.toRadians(t);
    this.r = 25;
    this.x = l * cos(theta);
    this.y = -l * sin (theta);
    this.velocity = v;
    
  }
  
  public void drawPendulum(){
    stroke(255);
    strokeWeight(5);
    line(-20,0, 20,0);
    strokeWeight(1);
     
    line(0,0, x,y);
    
    stroke(0);
    fill(#48cae4, 150);
    ellipse(x , y, 2*r, 2*r);
  
  }
  
  public void run(){
    
    drawPendulum();
    
    acc = (g/l) * sin(1.5 * PI - theta);
    velocity += acc * dt;
    theta += velocity * dt;
    
    x = l * cos(theta);
    y = -l * sin(theta);
    
    //println(x +" " + y);
    //println("Acc : " + acc);
    //println("Velocity : " + velocity);
    
    //println("Angle : " + Math.toDegrees(theta));
    //println("---------");
  }
  
  public void run_naive(){
    drawPendulum();
        
    acc = (g/l) * (1.5 * PI - theta);
    velocity += acc * dt;
    theta += velocity * dt;
    
    x = l * cos(theta);
    y = -l * sin(theta);
    
  }
  
}       
