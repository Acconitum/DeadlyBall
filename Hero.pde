public class Hero extends GameObject {
  
  /*
   * Autor:      Marc Mentha
   * Class:      Hero
   * Date:       05.10.2016
   */
   
   /***********************
   * Define Variables
   ***********************/
   
   private int life, ammo;
   private float xSpeed = 4, ySpeed = 4;
  
  public void initialize() {
    
    // Set the startposition
    this.setPosition(50, 50);
    
    // Define startconditions
    life = 3;
    ammo = 6;
  }
  
  /***********************************************************************************************/
  
  public void display() {
    fill(0, 255, 0);
    ellipse(this.position.x, this.position.y, 30 , 30);
  }
  
  /***********************************************************************************************/
  
  // Moves the Hero
  public void move() {
    
    // we check for borders are reached
    // BottomBorder
    if ( this.position.y >= 585 ) {
      //negate the value of ySpeed
      this.ySpeed *= -1;
    }
    
    // TopBorder
    if ( this.position.y <= 15 ) {
      // make ySpeed a positive number again
      this.ySpeed = Math.abs(this.ySpeed);
    }

    // RightBorder
    if ( this.position.x >= 785 ) {
      //negate the value of xSpeed
      this.xSpeed *= -1;
    }
    
    // And for the LeftBorder
    if ( this.position.x <= 15 ) {
      // positive Value of xspeed
      this.xSpeed = Math.abs(this.xSpeed);
    }
    
    // Finaly we move our Hero
    this.position.x += this.xSpeed;
    this.position.y += this.ySpeed;
  }

  /***********************************************************************************************/
  
   /************************
   * Define Getter-Methods *
   ************************/
   
   public int getLife() { return this.life; }
   public int getAmmo() { return this.ammo; }
   
   /************************
   * Define Getter-Methods *
   ************************/
   
   public void setLife(int newLife) { this.life = newLife; }
   public void setAmmo(int newAmmo) { this.ammo = newAmmo; }
}