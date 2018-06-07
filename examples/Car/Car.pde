import org.spritesheet.*;

SpriteSheetLibrary spriteSheetLibrary;
PImage layer0;
PImage layer1;
PImage car;
SpriteAnimation explosion;
boolean die = false;

void setup() {
  spriteSheetLibrary = new SpriteSheetLibrary(this);
  
  size(400, 400, P2D);
  frameRate(30);

  SpriteSheet sp = spriteSheetLibrary.loadSpriteSheet("field.png", 400, 400);
  layer0 = sp.getImage(0);
  layer1 = sp.getImage(1);
  
  sp = spriteSheetLibrary.loadSpriteSheet("car.png", 64, 64);
  car = sp.getImage(0);
  explosion = sp.getAnimation(9, 90);
}

void draw() {
  if(mousePressed) {
    explosion.rewind();
    die = true;
  }
  
  image(layer0, 0, 0);
  
  imageMode(CENTER); 
  if(die) {
    die = explosion.play(mouseX, mouseY);
  }
  else {
    image(car, mouseX, mouseY);
  }
  imageMode(CORNER);
  
  image(layer1, 0, 0);
}