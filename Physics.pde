
class Pendulum {
  // l : length of rope, g : gravity, theta : angle of rope with vertical, r : radius of bob
  float l,g, theta, r;
  // (x,y) : Co-ordinate of the center of the bob
  float x,y;
  // acc/velocity = instantaneous acceleration/velocity
  float acc = 0, velocity = 0;
  // dt : small interval of time
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
  
  // method to draw the pendulum
  public void drawPendulum(){
    stroke(255);
    strokeWeight(5);
    line(-20,0, 20,0);
    strokeWeight(1);
     
    line(0,0, x,y);
    stroke(61);
    
    fill(#48cae4, 150);
    ellipse(x , y, 2*r, 2*r);
  
  }
  
  public void run(){
    
    drawPendulum();
    // find the instantaneous acc, velocity and finally theta
    // theta gives (x,y)
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
