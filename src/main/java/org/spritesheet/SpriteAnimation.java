package org.spritesheet;

import processing.core.*;

public class SpriteAnimation implements PConstants
{
  public SpriteAnimation(PImage[] data) {
    this.data = data;
    rewind();
  }

  public void rewind() {
    this.frame = 0;
  }
  
  public boolean play(float x, float y) {
    if(this.frame < this.data.length) {
      SpriteSheetLibrary.Sketch.image(this.data[this.frame++], x, y);
      return true;
    }
    else {
      return false;
    }
  }
  
  public boolean play(float x, float y, float w, float h) {
    if(this.frame < this.data.length) {
      SpriteSheetLibrary.Sketch.image(this.data[this.frame++], x, y, w, h);
      return true;
    }
    else {
      return false;
    }
  }
  
  private int frame;
  private PImage[] data;
}