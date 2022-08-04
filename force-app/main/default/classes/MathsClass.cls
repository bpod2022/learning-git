public class MathsClass {

    // best practice is to use Uppercase for naking a class
    
    public static void addTwoNumber()
    {
     // this is the METHOD to add 2 numbers
     // best practice is to name theMethod using a lower case coupled with uppercase   
    	Decimal number1 = 20;
        Decimal number2 = 30;
        Decimal number3 = 100;
        Decimal number4 = 20;
        Decimal result = Math.roundToLong(number1/number2);
    	system.debug(number1 + number2);
        system.debug(number3*number4);
        system.debug(result);
        
     }

    public static void sumOfCurrencies() 
    {
        Decimal number5 = 100.30;
        Decimal number6 = 200.20;
        Decimal sum = number5 + number6;
        system.debug(sum);
           
    }
    
}