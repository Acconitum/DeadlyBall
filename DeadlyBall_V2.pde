/*
* Title:          Deadly Ball
* Application:    Overwork of my first programed game includes
*                 bugfixes 
*                 more stable flow in game.
*                 Options (KeySettings, Sounds)
* Autor:          Marc Mentha
* Version:        2.0.0
* Date:           05.10.2016
* Developed in:   Xubuntu 16.04
* Developed for:  Debian based Linux, Windows, Mac
* Sound:          Autor: poinl Title: Title-X
* 
* Version-history
* 05.10.2016:     Setting up the Ground-Structure
*                 Implemented MainMenuView
*/

/***********************
* Define Variables
***********************/

// make an game-instance
Game game = new Game(); 


// Create Window & initialize instances
void setup() {
  
  // Define Window-size
  size(800, 800);

  // Initialize the game
  game.initalize();
  
}

// Main
void draw() {
  
  if (game.isRunning()) {
    game.run();
  } else {
    exit();
  }
}