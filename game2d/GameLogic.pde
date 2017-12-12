class GameLogic {
 
  String playerName;
  float speed; //speed of the game
  float playerJump; //jump height
  float playerYMove;
  float playerY; //Y coordinate of the player
  int timeS; //passed time in seconds
  int timeC; //counter for when to increment timeS
  int score; //score player recieved
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
      
      background(#000000);
      
      hasInit = true;
      
    }
    
  }
  
  void drawPlayer() {
    
    if (playerJump != 0) {
     
      playerYMove = playerYMove * playerJump;
      
      if (playerYMove < 0.2) {
       
        playerJump = 0;
        playerYMove = 0;
        
      }
      
    }
    
    playerY = playerY - playerYMove;
    
    rect(100, playerY, 20, 20);
    text(playerYMove, 100, 100);
    
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