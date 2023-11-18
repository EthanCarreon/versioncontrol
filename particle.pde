class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float red;
  float green;
  float blue;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    float red = random(255);
    float green = random(255);
    float blue = random(255);
    fill(red, green, blue);
    ellipse(position.x, position.y, 10, 10);
  }
}
