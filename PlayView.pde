public class PlayView implements View {
  /*
   * Autor:      Marc Mentha
   * Class:      PlayView-controller
   * Date:       06.10.2016
   */

  /***********************
   * Define Variables
   ***********************/
   
   private int score;
   private Hero hero;
   
   /***********************************************************************************************/
   
   public void initialize() {
     

     this.score = 0;
     this.hero = new Hero();
   }
   
   /***********************************************************************************************/
   
   public void handleEvents() {
     
     this.hero.move();
   }
   
   /***********************************************************************************************/
   
   public void display() {
     
     //draw background
     this.hero.display();
   }
}