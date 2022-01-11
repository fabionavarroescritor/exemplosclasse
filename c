Quadradito q1;
Quadradito q2;

void setup() {
  

  size(1200, 720);
  smooth(8);
  background(255);

  for (int i = 0; i < width; i++) {


    q1 = new Quadradito(300, height/2, 180, color(i, 0, 0, 255-i));
    
    q1.velx = 1.9;
    q1.vely = 1.7;

    q2 = new Quadradito(600, height/2, 180, color(0,0,i));
    
    q2.velx = 2.6;
    q2.vely = 2.4;
  }
}

void draw() {


  q1.mostra();
  q1.balanca();

  q2.mostra();
  q2.balanca();
  
}

class Quadradito {

  float x;
  float velx;
  float y;
  float vely;
  float tam;

  color c;

  Quadradito(float px, float py, float sz, color cor) {

    x = px;
    y = py;
    tam = sz;
    c = cor;
  }

  void mostra() {

    fill(c);
    //noStroke();
    rectMode(CENTER);
    rect(x, y, tam, tam);
  }

  void balanca() {

    x += velx;
    if (x < tam/2 || x > width-tam/2) {
      velx *= -1;
    }

    y += vely;
    if (y < tam/2 || y > height-tam/2) {
      vely *= -1;
    }
  }
}
