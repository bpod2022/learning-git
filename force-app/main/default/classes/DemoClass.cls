public class DemoClass {

// identifier		static/nonstatic		return type			method name			parameters
// public			static					void/string/integer		name				(1,2,3)
//
//    variables -- Integer/String --> storres only single values
//    			-- List<Integer>, List<String> --> stores multiple values    
    
    
    
    //check eligibility for bonus
    //if Employee rating = 10 then bonus = $10000
    //if Employee rating between 9-5 then bonus = $5000
    //if employee rating is less than 5 then bonus = $100
    
    public static void onecheckEligibility () {
        
        Integer Rating = 10;
        Integer Bonus;
               
        if (Rating == 10) {
            Bonus = 10000;
            }
    	else if (Rating >= 5 && Rating <= 9) {
        	Bonus = 5000;
    		}
    	else {Bonus = 100;}
    
    System.debug (Bonus);
    }
//------------------------------------------------------------------------------------------------------------------
    // a METHOD that accepts an input value
    // inout into the method
    
        public static void twocheckEligibility (Integer Rating) {
        
        Integer Bonus;
               
        if (Rating == 10) {
            Bonus = 10000;
            }
    	else if (Rating >= 5 && Rating <= 9) {
        	Bonus = 5000;
    		}
    	else {Bonus = 111;}
    
    System.debug (Bonus);
    }
//------------------------------------------------------------------------------------------------------------------
	// accept input parameter of game (string)
	// Return the player(string)
	// 
	// execute below x2 lines
	// String output = DemoClass.gamePlayer('Football');
	// system.debug(output);
	// 
	// 
    // who is favourite player?
    // Input from user should be Game
    // If Game = Football, then display Player - Ronaldo
    // If Game = Cricket, then display Player - Sachin Tendulkar
    // If Game = Boxing, then display Player - Mohammad Ali
    
    Public static String gamePlayer (string Game){
        
        String Player;
        switch on Game {
            when 'Football' {
                Player = 'Ronaldo';
            }
            when 'Cricket'{
                Player = 'Sachin Tendulkar';
            }
            when 'Boxing'{
                Player = 'Mohammad Ali';
            }
            when else {
                Player = 'unknown?';
            }
		}
        system.debug ('Player is ' + Player);
        return Player;
    }
//-----------------------------------------------------------------------------------------------------
// using more than one input variable 
// 
   	Public static void sumOfThreeNumbers(Integer One, Integer Two, Integer Three){
        Integer Sum;
        Sum = One + Two + Three;
        system.debug('The sum of three numbers is   ' + Sum);
        
    }
    
//-----------------------------------------------------------------------------------------------------
// show the output to the user
// 
// execute below x2 lines
// Integer output = DemoClass.calculatesumThreeNumbers(43,78,29);
// system.debug(output);
//     
    Public static Integer calculatesumThreeNumbers(Integer One, Integer Two, Integer Three){
        Integer Sum;
        Sum = One + Two + Three;
        system.debug('The sum of three numbers is   ' + Sum);
        return sum;
    }
 
//-----------------------------------------------------------------------------------------------------
// create a method which display list of 5 fruits
//    
	public static void fruitbowl () {
        List<string> fruitbasket = new list<string>();
        fruitbasket.add('Apple');
        fruitbasket.add('Banana');
        fruitbasket.add('Orange');
        fruitbasket.add('Mandarin');
        fruitbasket.add('Grapes');
        
        system.debug(fruitbasket);
    }   
//-----------------------------------------------------------------------------------------------------
// create a method which accepts a list of 5 fruits and replaces any fruit which is Kiwi with Grapes
//
// Execute below x2 lines
// List<String> output = DemoClass.fruitbowlss('apple','banana','orange','mandarin','kiwi');
// system.debug(output);   
//        
//                
	public static List<String> fruitbowlss (String fruit1, String fruit2, String fruit3, String fruit4, String fruit5) {
        List<String> fruitbasket = new list<String>();
        fruitbasket.add(fruit1);
        fruitbasket.add(fruit2);
        fruitbasket.add(fruit3);
        fruitbasket.add(fruit4);
        fruitbasket.add(fruit5);
        
        system.debug(fruitbasket);

// set some variables for use during the execution of this method        
        Integer NumFruits;   								/* to hold the max number of variables in the string */
        Integer count = 1;	 								/* Do..WHILE counter */
		        
// if any fruit = Kiwi, the replace with Grapes        
// we don't know how many entries in the list string so repeat loop until all checked.
        NumFruits = fruitbasket.size();						/* defines the total number of entries in the list */
        
        Do {
            if (fruitbasket.get(count) == 'Kiwi') {
                fruitbasket.set(count, 'Grapes');			/* replace Kiwi with Grapes at the point it occurs */
            	}
        	count++;										/* increase the counter by 1 */
        	} While (count < NumFruits);
                
        return fruitbasket;
    }   
}