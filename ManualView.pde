public class ManualView extends Function implements View {

  /*
   * Autor:      Marc Mentha
   * Class:      Every Gameobject extends from this Class/ Defaultcalss for Cursors
   * Date:       05.10.2016
   */

  /***********************
   * Define Variables
   ***********************/
  private Game game;

  public void initialize(Game game) {
    this.game = game;
  }

  /***********************************************************************************************/

  public void handleEvents() {
    
    if (enterPressed) {
      // Enter where pressed so we reset all globals and channge the View
      this.game.resetGlobals();
      this.game.changeView("Mainmenu");
    }
  }

  /***********************************************************************************************/

  public void display() {
    
    background(0); // Clear the screen
    super.displayMenuHeader();
    super.displayManualFooter();
    super.displayCopyright();
    
    // Manualspezific content
    // Title
    fill(255, 0, 0);
    textSize(40);
    text("... The f***ing Manual", 200, 220);
    
    //Warning
    textSize(30);
    text("Be aware!", 350, 290); 
    text("This game does not like you!", 200, 330);
    fill(255);
    textSize(25);
    text("Change your guns position with", 225, 380);
    text("Arrow Left/ Right'.", 225, 410);
    text("Press 'Spacebar' to shoot", 225, 450);
    text("the Blue Balls.", 225, 480);
    text("Reload with Numpad '0' (Zero).", 225, 520);
    text("Pause with 'p'.", 225, 560);
    text("Good Luck", 225, 650);
  }
}