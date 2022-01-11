PFont fonte;

float t;

Palavra p1;

void setup() {

  fonte = createFont("Bauhaus 93", 120);
  textFont(fonte);

  
  size(990, 720);
  smooth(8);
}


void draw() {
  
  background(255);
  
  t += 0.1;

  for (int x = 0; x < width; x+=32) {
    for (int y = 0; y < height; y+=32) {

      p1 = new Palavra(x, y, 23, color(127+sin(x*0.21+t)*127,127+sin(x+y*0.22+t)*127,127+sin(x*0.2+t)*127));

      p1.mostra();
    }
  }
  //if(frameCount == 2100){
  //  exit();
  //}
  //saveFrame("salva/image####.png");
}


class Palavra {

  float px, py, size;
  color c;
  String plv;

  Palavra(float x, float y, float sz, color cor) {

    px = x;
    py = y;
    size = sz;
    c = cor;
    plv = "AR";
  }

  void mostra() {
    

    fill(c);
    noStroke();
    textSize(size);
    text(plv, px, py);
  }
}
