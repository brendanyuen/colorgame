color red=#DF151A;
color orange=#FD8603;
color yellow=#F2ED42;
color green=#31E851;
color blue=#6BB8D3;
color black=#050505;
color white=#F7FDFF;
int mode;
int highScore;
final int intro=0;
final int game=1;
final int gameover=2;
int points;
int rng=int(random(0, 5));
int crng=int(random(0, 5));
float a;
ArrayList<PImage> gif;
int n=0;
void setup() {
  size(800, 600);
  gif=new ArrayList<PImage>();
  int i=0;
  while (i<=44) {
    PImage p1; 
    if (i<10) {
      p1=loadImage("frame_0"+i+"_delay-0.03s.gif");p1.resize(800,600);
    } else { 
      p1=loadImage("frame_"+i+"_delay-0.03s.gif");p1.resize(800,600);
    }
    gif.add(p1);
    i=i+1;
  }
  mode=intro;
 
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Mode Error");
  }
}

void mouseReleased() {

  if (mode==intro) {
    mode=game;
  } else if (mode==game) {
    gameClicks();
  } else if (mode==gameover) {
    mode=intro;
  } else {
    println("Mode Error");
  }
}
