public class StringClass {
	// best practice is to use Uppercase for naking a class
    //this method is for printing colours //
    
    public static void printColour(){
     // this is the METHOD //
     // best practice is to name theMethod using a lower case coupled with uppercase   
    	string colour;
    	colour = 'Black ';
    	colour = colour + ' & white';
    	system.debug(colour);
        system.debug(colour.indexOf('k'));
     }
        
    public static void printCountry() {
        string country1 = '  New Zealand  ';
        country1.trim();
        string country2 = 'Australia';
        string country3 = 'India';
        string country4 = 'Canada';
        string dash = ' -- ';
        string combined = country1 + dash + country2 + dash + country3 + dash + country4;
        system.debug(combined);
        system.debug(combined.length());
        system.debug(combined.toLowerCase());
        system.debug(combined.toUpperCase());
        //system.debug(country1 + dash + country2 + dash + country3 + dash + country4;
    }
    
}