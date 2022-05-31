//Libraries: uses Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variables holding extensions WAV, AIFF, AU, SND, & MP3
//
void setup()
{
  //size(500, 600); //Remeber, Display Geoemtry is Mandatory
  minim = new Minim(this); //loads from data directory, loadFile should also laod from project folder, like loadImage()
  song1 = minim.loadFile("MusicDownload/groove.mp3"); //albe to pass absulute path, file name & extension, and URL
  
}//End setup
//
void draw() {}//End draw
//
void keyPressed()
{
  //Only press a number for this code below
  String keystr = String.valueOf(key);
  println("Number of Repeats is", keystr);
  int num = int(keystr);
  song1.loop(num);
  //
  /* Previous Play Button & Loop Button
  int loopNum = 2; //Local Variables plays once and loops twice
  //song1.play(); //Parameter is milli-seconds from start of audio file to start of playing
  if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of repeats;
  */
}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN
//