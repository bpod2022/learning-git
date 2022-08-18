@isTest
private class DemoTuesClassTest {

 //  This is a APEX CLASS specifically to test a Apex Class 

    @isTest
    private static void testDisplayNumber(){
        
        Test.startTest();
		DemoTuesClass.displayNumber();
            	    
    	Test.stopTest();
    }
    
     @isTest
    private static void testPlayerLookup(){
        
        Test.StartTest();
        
        string game = 'Basketball';
        string player1;
        string player2;
        string player3;
        List<string> players = DemoTuesClass.playerLookup(game);

            for (string player:Players){
                if(player == 'Stephen'){
                    player1 = player;
                }
            }

        system.assertEquals('Stephen', player1);
            
    	Test.stopTest();
    }
    
    @isTest
    private static void testGamePlayersForBasketBall(){
        Test.startTest();
        	
        	string game = 'Basketball';
            List<String> players = DemoTuesClass.playerLookup(game);   
            
            String playerName;
            for(String player:players){
                if(player == 'Jordan'){
                    playerName =  player;
                }
            }
        
            System.assertEquals('Jordan', playerName);
        
        Test.stopTest();
    }
}