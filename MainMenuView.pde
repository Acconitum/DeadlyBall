private boolean enterPressed, upPressed, downPressed;

public class MainMenuView extends Function implements View {
  /*
   * Autor:      Marc Mentha
   * Class:      Mainmenu-Controller
   * Date:       02.10.2016
   */
  
  /***********************
  * Define Variables
  ***********************/

  private GameObject cursor = new GameObject();
  private ArrayList<String> menuPoints = new ArrayList<String>();
  private int menuPointSelected = 0;
  private Game game;

  /***********************************************************************************************/

  public void initialize(Game game) {

    this.game = game;

    cursor.setPosition(200, 275);

    // Adding the MenuPoints to the ArrayList
    menuPoints.add("Play");
    menuPoints.add("Options");
    menuPoints.add("Read");
    menuPoints.add("Credits");
    menuPoints.add("Quit");
  }

  /***********************************************************************************************/

  public void handleEvents() {

    // Check if keyevents where triggeret
    if (enterPressed) {
    // Something where selected so we reset all globals and channge the View
      this.game.resetGlobals();
      this.game.changeView(menuPoints.get(menuPointSelected));
    }

    if (downPressed) {
      // Move cursor down and reset downPressed variable
      downPressed = false;
      menuPointSelected += 1;
      cursor.setPosition(cursor.position.x, cursor.position.y + 75); 

      // Return to the start of the list when cursor reached the end
      if ( menuPointSelected > 4) {
        menuPointSelected = 0;
        cursor.setPosition(200, 275);
      }
    }

    if (upPressed) {
      // Move cursor up and resets the upPressed variable
      upPressed = false;
      menuPointSelected -= 1;
      cursor.setPosition(cursor.position.x, cursor.position.y - 75); 

      // Return to the end of the list when cursor reached the start
      if (menuPointSelected < 0) {
        menuPointSelected = 4;
        cursor.setPosition(200, 575);
      }
    }
  }

  /***********************************************************************************************/

  public void display() {

    background(0); // Clean the screen
    super.displayMenuHeader();
    super.displayMainMenuFooter();
    super.displayCopyright();
    cursor.display();

    // Display menupoints
    fill(255, 0, 0); //Textcolor
    textSize(40);

    float lineHeight = 300;
    for ( int i = 0; i < menuPoints.size(); i++) {
      text(menuPoints.get(i), 300, lineHeight);
      if ( i == 2) { 
        text("...", 400, lineHeight);
      }
      lineHeight += 75;
    }
  }
}

  /***********************************************************************************************/