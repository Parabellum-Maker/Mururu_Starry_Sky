final int N = 1024 * 10; //Number of stars
final int REF = 1024;    //Base Resolution. REF x REF pixel
final int MAGNI = 4;     //Magnification
final int MAX_SIZE = 10; //Maximum star size

void settings() {
  //Screen Settings
  size(REF*MAGNI, REF*MAGNI);
  smooth();
}

void setup () {
  //Background Color
  background(#34343d);

  //randomSeed(10);

  int[] x = new int [N];
  int[] y = new int [N];
  int[]  size = new int [N];
  int[]  type = new int [N];

  color c[] = {#FF9B5D, #009CFA, #FAF200, #FFFFFF};

  for (int i = 0; i < N; i++) {
    x[i]= int(random(0, REF*MAGNI));
    y[i]= int(random(0, REF*MAGNI));
    size[i] = int(random(1, MAX_SIZE));
    type[i] = int(random(0, c.length));
  }

  //No outlines
  noStroke();
  
  //eyebrows
  fill(#2d2b37);
  rect(0, 740*MAGNI, 150*MAGNI+1, 44*MAGNI+1);

  //doko?
  fill(#666b77);
  rect(151*MAGNI, 879*MAGNI+1, 39*MAGNI+1, 52*MAGNI+1);

  //Stripes
  fill(#2d2b37);
  rect(151*MAGNI, 933*MAGNI, 171*MAGNI+1, 90*MAGNI+1);

  //Draw the stars
  for (int i  =0; i < N; i++) {
    fill(c[type[i]]);
    ellipse(x[i], y[i], size[i], size[i]);
  }

  //pupil
  fill(#262626);
  rect(151*MAGNI, 784*MAGNI+1, 39*MAGNI+1, 94*MAGNI+1);

  //eye
  fill(#e6d590);
  rect(0, 785*MAGNI, 150*MAGNI+1, 159*MAGNI+1);

  //outline
  fill(#262626);
  rect(0, 944*MAGNI, 150*MAGNI+1, 79*MAGNI+1);

  save("background.png");
  exit();
}

void draw() {
}
