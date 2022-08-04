public class ConditionalClass {

    // Display Capital of Countries basedon following logic
    // New Zealand -- output should be Wellington
    // India -- output should be Delhi
    // Australia -- output should be Canberra
    
    public static void displayCapital() 
    {
    string country = 'New Zealand';
    string capital;
        
        IF(country == 'New Zealand'){
            capital = 'Wellington';
        }
        else if (country == 'India'){
            capital = 'Delhi';
        }
        else {
            capital = 'Canberra';
        }
        system.debug(capital);
    }
    
    // display Legends from sports based on game
    
    public static void displayLegends() 
    {
    String game ='basketball';
    string player;
        
        if(game == 'cricket')
        	{player = 'Sachin Tendulkar';}
        else if(game == 'Boxing')
        	{player = 'Mohammad Ali';}
        else if(game =='Football')
        	{player = 'Ronaldo';}
        else {player = ' ?? ';}
        
        system.debug(player);
    }
    
    
    public static void displayAnswer()
    {
        Integer answer = 10;
        IF (answer>3 && answer <30)
        {system.debug(answer);}
    }
    
    public static void conditionalSwitch() {
        Boolean switchButton = True;
        if(switchButton== true){
            system.debug('light is on');
        }
        Else {system.debug('light is off');}
    }
    
    
}