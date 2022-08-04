public class ExerciseClass {
    
	public static void funExercise(){
    	Double num1 = Math.random();
    	system.debug(num1);
    	num1 = (num1 * 2) + 4;
        Double num2 = Math.round(num1);
        system.debug(num2);
        Double larger = Math.max(num1,num2);
        system.debug(larger);
	}
    
    public static void funDivision() {
        Double num1 = 20.20;
        Double num2 = 40.10;
        Double result = num1/num2;
        system.debug(result);
    }
}