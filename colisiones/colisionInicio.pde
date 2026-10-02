 Circulo circulo;
 Rectangulo rectangulo;
 
 void setup(){
 size(800, 600);
 circulo = new Circulo();
 rectangulo = new Rectangulo();
 }
 
 void draw(){ 
 circulo.mover();
 
 if(rectangulo.colision(circulo)){
   background(255, 50, 50);
   circulo.CirculoVel.x *= -1;
   circulo.CirculoVel.y *= -1;
   
   circulo.CirculoPos.add(circulo.CirculoVel);
 } else {
   background(178, 255, 0);
 }
 
 rectangulo.mostrar();
 circulo.mostrar();
 }
