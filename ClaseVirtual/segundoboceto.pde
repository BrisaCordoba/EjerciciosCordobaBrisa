 void setup(){
   size(400, 400); //Lienzo
 }

void draw(){
  background(60); //Limpia el lienzo 
  if(mousePressed){ //si tipo aprieto el mouse dibuja 
    line(width-mouseX, height-mouseY, width-pmouseX, height-pmouseY); //El efecto espejo del ultimo video
  }
}
