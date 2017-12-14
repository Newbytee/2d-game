import javax.swing.JOptionPane;

Menu m;
GameLogic g;
TextDisplay t;

int refresh = 120; //refresh rate of the game, as the time counter depends 
int random;
int i;
boolean isPlaying = false;
boolean gameIsOver = false;
boolean enableDebug = false; //whether to show debug information or not

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  t = new TextDisplay();
  
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
  
  if (((key == 'D') || (key == 'd')) && (isPlaying == false) && (enableDebug == false)) {
    
    enableDebug = true;
    
    textSize(20);
    
    if (i < (refresh * 3)) {
     
      text("Debug mode enabled!", 10, height - 10);
      i++;
      
    }
    
  }
      
}

void keyPressed() {
 
  if (((keyCode == UP) && (isPlaying == true)) && (g.playerY > 379)) {
   
    g.playerJump();
    
  }
  
}