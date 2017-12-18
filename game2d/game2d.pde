Menu m;
GameLogic g;
TextDisplay t;
Player p;
Enemy[] e = new Enemy[10];

int refresh = 120; //refresh rate of the game, as the time counter depends 
boolean isPlaying = false;
boolean gameIsOver = false; //enable if game is over
boolean enableDebug = false; //whether to show debug information or not

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  t = new TextDisplay();
  p = new Player();
  e = new Enemy[10];
  
  size (512, 512);
  frameRate(refresh);
  
  for (int i = 0; i < e.length; i++) {
   
    e[i] = new Enemy(width , height - 100, random(0.05, 0.2), random(0.5, 1.5));
    
  }
   
}

void draw() {

  m.mainMenu();
  m.enableDebug();
  
  if (isPlaying == true) {
    
    p.init();
    g.init();
    g.gameLoop();
    
    for (int i = 0; i < e.length; i++) {
     
      Enemy clone = e[i];
      clone.spawn();
      clone.move();
      
    }
    
    for (int i = 0; i < e.length; i++) {
     
      Enemy clone = e[i];
      
      p.playerHit(clone);
      
    }
    
    p.drawPlayer();
    p.playerGravity();
    t.displayInfo();
    
  }
  
  if (gameIsOver == true) {
   
    isPlaying = false;
    
    g.getHighscoreName();
    
  }
  
  t.displayDebug();
    
  }
   

void keyPressed() {
 
  if (((keyCode == UP) && (isPlaying == true)) && (p.playerOnGround == true)) {
   
    p.playerJump();
    
  }
  
}