class GameLogic {
 
  String playerName;
  float speed; //speed of the game
  float playerJump; //jump height (unused)
  float playerYMove; //factor of which the player should move on the Y-axis
  float playerY; //Y coordinate of the player
  int timeS; //passed time in seconds
  int timeC; //counter for when to increment timeS
  int score; //score player recieved
  boolean playerOnGround = true;
  boolean hasInit = false; //whether the init code has run
  
  GameLogic() {
    
  }
  
  void init() {
    
    if (hasInit == false) {
      
      speed = 1.0f;
      timeS = 0;
      timeC = 0;
      score = 0;
      playerY = 380.0f;
      playerYMove = 0.0f;
      
      background(#000000);
      
      hasInit = true;
      
    }
    
  }
  
  void drawPlayer() {
    
    if (playerJump != 0) {
     
      playerYMove = playerYMove * playerJump;
      
      /*if (playerYMove < 0.2) {
       
        playerJump = 0;
        playerYMove = 0;
        
      }*/
      
    }
    
    playerY -= playerYMove;
    
    rect(100, playerY, 20, 20);
    text(playerJump, 100, 120);
    text(playerYMove, 100, 100);
    
  }
  
  void playerGravity() {
   
    if (playerY >= 379.5) {
     
      playerYMove = 0;
      
    } else {
     
      playerYMove = playerYMove - 0.1;
      
    }
    
    if (playerY > 380) { //move player back up if they get below ground for whatever reason
     
      playerY = 380;
      
    }
    
  }
  
  void playerJump() {
   
    playerYMove = 5.0f;
    
  }
  
  int gameLoop() { //main game loop, returns score
    
    if (timeC == refresh) { //count time
     
      timeS++;
      timeC = 0;
      
    } else {
     
      timeC++;
      
    }
    
    background(#000000);  
    fill(#FFFFFF);
    textSize(16);
    text(timeS, 10, 20);
    
    rect(0, 400, width-1, 111);
    
    return score;
    
  }
  
  String getHighscoreName() { //get name for the scoreboard 
   
    return playerName;
    
  }
  
}