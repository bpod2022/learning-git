public class ExerciseForloopClass {
    public static void sloopy(){
        Integer i;
        for (i =1; i<5; i++){
            //if (i == 3){continue;}//
            if (i == 3){break;}
            system.debug(i);    
        }
        system.debug('outside the loop  ' + i);
    }
}