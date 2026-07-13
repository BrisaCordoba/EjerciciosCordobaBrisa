class movil{
  PVector pos;
  PVector vel = new PVector(1, 1);
  movil(){
  pos = new PVector(random(width), random(height));
  }
  
  void mover(){
      pos.add(vel);
      
  }
  void mostrar(){
    circle(pos.x, pos.y, 10);
  }
}
movil m;
void setup(){
  size(800, 600);
  m = new movil();
}
void draw(){
  m.mover();
  m.mostrar();
}
