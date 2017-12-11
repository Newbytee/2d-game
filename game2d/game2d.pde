Menu m;
GameLogic g;

boolean isPlaying = false;
boolean gameIsOver = false;

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  
  size (512, 512);
   
}

void draw() {

  m.mainMenu();
  
  if (isPlaying == true) {
   
    g.init();
    g.gameLoop();
    g.drawPlayer();
    
  }
  
  if (gameIsOver == true) {
   
    g.getHighscoreName();
    
  }
  
}

void keyPressed() {
 
  if ((keyCode == UP) && (isPlaying == true)) {
   
    g.playerJump = 0.9888f;
    
  }
  
}