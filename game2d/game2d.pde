Menu m;
GameLogic g;

int refresh = 240; //refresh rate of the game, as the time counter depends 
int random;
boolean isPlaying = false;
boolean gameIsOver = false;

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  
  size (512, 512);
  frameRate(refresh);
   
}

void draw() {

  m.mainMenu();
  
  if (isPlaying == true) {
   
    g.init();
    g.gameLoop();
    g.drawPlayer();
    g.playerGravity();
    
  }
  
  if (gameIsOver == true) {
   
    g.getHighscoreName();
    
  }
  
  text("meep", 100, 100);
    
}

void keyPressed() {
 
  if (((keyCode == UP) && (isPlaying == true)) && (g.playerY > 379)) {
   
    g.playerYMove = 1.0f;
    g.playerJump = 0.99f;
    
  }
  
}