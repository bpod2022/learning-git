public class TrialStuffClass {

    public static void stuff(){
        Integer A = 5;
        Integer B = 2;
		Double Sum;
        Sum = Math.mod(B,A);
        system.debug('Sum equals = ' + Sum);
//      System.assertEquals(2, A / B);
//		System.assertEquals(1, Math.mod(A, B));
        system.debug('A equals = '+ A + 'B equals = ' + B);
    }
    
 // http://peterknolle.com/calculations-in-apex/
 // 
 // assertEquals() is used to validate two values are equal. Basically it is used in test method. 
 // This method asserts that the first two arguments, x and y are the same, if they are not a runtime exception is thrown.
    
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 
    public static Decimal decimalMod(Decimal x, Decimal y){
   
// This method will return a remainder result of two decimals divided
// example: decimalMod(5.01, 0.25) would result in a remainder of .01.
 

    Decimal remainder = 0;

    if(x != 0){
        Decimal firstResult = x / y; 
        Decimal flooredResult = math.floor(firstResult);
        Decimal flooredProduct = flooredResult * y;
        remainder = x - flooredProduct; 
    	}

    return remainder;
	}

    
    
}