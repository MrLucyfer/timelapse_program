import processing.video.*;
Capture cam;
PImage image;
int i = 0;
int seconds;



void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[2]);
  cam.start();
  println(cameras[2]);
  frameRate(1);
}

void draw() {
  seconds = countSeconds();
  cam.read();
  image(cam, 0, 0);
  if (seconds % 10  == 0) {
    saveFrame("photos/time" + i + ".png");
    i++;
  }
}


int countSeconds() {
  int millis = millis();
  int seconds = millis / 1000;
  return seconds;
}
