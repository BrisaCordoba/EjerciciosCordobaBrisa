PVector pos, vel;

void setup(){
  size (800, 600);
  pos = new PVector(width/2, height/2);
  vel = new PVector(2, -1);
}

void draw(){
  println(pos.x, pos.y);
  pos.add(vel);
  ellipse(pos.x, pos.y, 10, 10);
     if (pos.x > width || pos.x < 0 ){
     vel.x = vel.x * -1;
 } else if (pos.y > height || pos.y < 0){
     vel.y = vel.y * -1;
 }
}
