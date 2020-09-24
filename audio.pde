
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;


void setup()
{
  size(600,600);
  minim = new Minim(this);
  
  song = minim.loadFile("new york.mp3");
  song.play();
  
}

void draw()
{
  background (0);
  
  float level = song.mix.level();
  

  float radius = level * 150;
  ellipse(width/2, height/2, radius*10, radius*10);
  
  fill(255,182,193);
  
}