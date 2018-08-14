import processing.video.*;
Capture cam;
PImage image;
int camIndex = 0;

void setup() {
  frameRate(1);
  String[] cameras = Capture.list();
  size(640, 480);
  cam = new Capture(this, cameras[camIndex]);
  cam.start();
}

void draw() {
  cam.read();
  image(cam, 0, 0);
}
