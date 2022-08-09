public class DemoTuesClass {

// create method which display numbers from 1-10

    public static void displayNumber(){
        
        List<Integer> numberList = new List<Integer>();
        numberList.add(1);
        numberList.add(2);
        numberList.add(3);
        numberList.add(4);
        numberList.add(5);
        numberList.add(6);
        numberList.add(7);
        numberList.add(8);
        numberList.add(9);
        numberList.add(10);
        
        system.debug(numberList); // USER_DEBUG [19]|DEBUG|(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
        
    }
    
 //----------------------------------------------------------------------------------------------
 //
 //Create a mthod that takes input from Customer "Game" as based on that display 3 players of that game
 //Games are "Cricket","Football","Basketball"
 //output shuld be displayed to Customer on his screen
    
    public static List<String> playerLookup(String Game){
    
    	List<String> Player = new List<String>();
                
        switch on Game {
            when 'Football' {
                Player.add('Ronaldo');
                Player.add('Pele');
                Player.add('Maradona');
            }
            when 'Cricket'{
                Player.add('Sachin');
                Player.add('Virat');
                Player.add('Steve');
            }
            when 'Basketball'{
                Player.add('Stephen');
                Player.add('Jordan');
                Player.add('Brad');
            }
            when else {
                Player.add('No players found. ');
            }
		}
        system.debug ('Players are ' + Player);
        return Player;
    }
 
 	public static  List<String> gamePlayers(String Game){

        List<String> players = new List<String>();

        if( Game ==  'Cricket'){
            players.add('Sachin');
            players.add('Steve');
            players.add('Virat');
            return players;
        }
        else if(Game ==  'Football'){
            players.add('Ronaldo');
            players.add('Pele');
            players.add('Maradona');
            return players;
        }
        else if(Game ==  'Basketball'){
            players.add('Jordan');
            players.add('Brad');
            players.add('Steve');  
            return players;
        }
        else{
             players.add('No Players Found');
            return players;
        }
    }

//----------------------------------------------------------------------------------------------
 //
 //Create a mthod which accpets "Country" as input from customer
 //and return 2 cities from that country
 //output shuld be displayed to Customer on his screen
    
    public static List<String> getCity(String Country){
    
        List<String> cities = new List<String>();

        if( Country ==  'New Zealand'){
            cities.add('Auckland');
            cities.add('Wellington');
            return cities;
        }
        else if( Country ==  'Australia'){
            cities.add('Sydney');
            cities.add('Brisbane');
            return cities;
        }
        else if( Country ==  'USA'){
            cities.add('Washington');
            cities.add('New York');
            return cities;
        }
        else{
             cities.add('No cities found');
            return cities;
        }
   }
//------------------------------------------------------------------------------------------------
// This is how to use Map
// 

	public static void myMaps () {
        Map<String, String> myAppartmentBlock = new Map<String, String>();
        myAppartmentBlock.put('Afraz', 'A1001');
        myAppartmentBlock.put('Abel', 'A1002');
        myAppartmentBlock.put('Brendan', 'A1003');
        myAppartmentBlock.put('Will', 'A1004');
        system.debug(myAppartmentBlock);
        
        myAppartmentBlock.remove('Brendan');
        system.debug(myAppartmentBlock);
        system.debug(myAppartmentBlock.size());
        
        system.debug(myAppartmentBlock.get('Abel'));
    }
    
//---------------------------------------------------------------------------------------------

    public static String getCityFromMap(String Country){
    
        string CapitalOf;
        Map<String,String> countryCityMap = new Map<String, String>();
        countryCityMap.put('New Zealand', 'Auckland');
        countryCityMap.put('Australia', 'Sydney');
        countryCityMap.put('USA', 'New York');
        countryCityMap.put('India', 'Mumbai');
        
        CapitalOf = countryCityMap.get(country);
        return CapitalOf;
    }
//-----------------------------------------------------------------------------------------------    
// Display a player name based on Game
// Game and player should be stored in form of key and value
// Output should be displayed to the End User

    public static String getPlayerFromMap(String Game){
    
        string Player;
        Map<String,String> GameMap = new Map<String, String>();
        GameMap.put('Cricket', 'Sachin');
        GameMap.put('Football', 'Ronaldo');
        GameMap.put('Basketball', 'Adams');
        GameMap.put('Rugby', 'Richie');
        
        Player = GameMap.get(Game);
        return Player;
    }    
    
}