import javax.swing.JOptionPane;

Menu m;
GameLogic g;
TextDisplay t;
Player p;

int refresh = 120; //refresh rate of the game, as the time counter depends 
boolean isPlaying = false;
boolean gameIsOver = false;
boolean enableDebug = false; //whether to show debug information or not

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  t = new TextDisplay();
  p = new Player();
  
  size (512, 512);
  frameRate(refresh);
   
}

void draw() {

  m.mainMenu();
  m.enableDebug();
  
  if (isPlaying == true) {
   
    p.init();
    g.init();
    g.gameLoop();
    p.drawPlayer();
    p.playerGravity();
    t.displayInfo();
    
  }
  
  if (gameIsOver == true) {
   
    g.getHighscoreName();
    
  }
  
  t.displayDebug();
    
  }
   

void keyPressed() {
 
  if (((keyCode == UP) && (isPlaying == true)) && (p.playerOnGround == true)) {
   
    p.playerJump();
    
  }
  
}