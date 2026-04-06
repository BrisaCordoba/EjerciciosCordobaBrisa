void setup(){
  size(800, 800);
}
void draw(){
fill(#905AA7);
rect(0, 0, width/2, height/2);
fill(#5AA791);
rect(width/2, 0, width, height/2);
float dw = width * 0.30, dh = width * 0.10;
fill(#8B0B0B);
ellipse(width * 0.25, height* 0.25, dw, dh);
fill(#33AFAE);
line(0, height/2, width, height/2);
fill(#FA00FF);
rect(width * 0.25 - dw / 2, height * 0.75, dw, dh);
fill(#00F001);
circle(width * 0.75, height * 0.25, dh);
fill(#050205);
point(width * 0.80, height * 0.15);
fill(#FA00FF);
line(width/2 , 0, width / 2, height);
fill(#FF8912);
triangle(width * 0.60, height * 0.90, width * 0.75, height * 0.60, width * 0.90, height * 0.90);
}
