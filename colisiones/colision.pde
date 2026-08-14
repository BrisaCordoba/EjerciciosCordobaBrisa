float rx = 400,
  ry = 300,
  rw = 160,
  rh = 100;

color colorR = color(50, 150, 255);
PVector pos = new PVector(100, 100);
PVector vel = new PVector(5, 3);
float radio = 25;

void setup() {
  size(800, 600);
}

void draw() {
  background(40);
  pos.add(vel);

  if (pos.x < radio || pos.x > width - radio) vel.x *= -1;
  if (pos.y < radio || pos.y > height - radio) vel.y *= -1;

  float cercanoX = constrain(pos.x, rx - rw/2, rx + rw/2);
  float cercanoY = constrain(pos.y, ry - rh/2, ry + rh/2);

  if (dist(pos.x, pos.y, cercanoX, cercanoY) < radio) {
    vel.x *= -1;
    vel.y *= -1;

    pos.add(vel);

    colorR = color(random(255), random(255), random(255));
  }


  rectMode(CENTER);
  fill(colorR);
  rect(rx, ry, rw, rh);

  fill(255);
  circle(pos.x, pos.y, radio * 2);
}
