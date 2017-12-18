class Enemy {
 
  int x;
  int y;
  float speedX;
  float speedY;
  
  Enemy(int x, int y, float speedX, float speedY) {
   
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    
  }
  
  void spawn() {
   
    rect(x, y, 20, 20);
    
  }
  
  void move() {
   
    x -= speedX;
    y -= speedY;
    
    if (x <= 0 || y <= 0) {
     
      x = width;
      y = (Math.round(random(300, 380)));
      speedX = random(1.5, 0.5);
      
    }
    
    if (y > 405) {
     
      y = 360;
      
    }
    
    if (y < 280 || y > 400) {
     
      speedY = speedY - (2 * speedY);
      
    }
    
  }
  
}