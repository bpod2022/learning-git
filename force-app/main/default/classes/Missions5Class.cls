/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Missions5Class {

    public static void fourNumbers(){
        // Variables
        List<Integer> input = new List<Integer>();
        
        // setup values in List
        input.add(12);
        input.add(20);
        input.add(30);
        input.add(17);
        input.add(75);
        system.debug(input);
        // Loop thru list until all entries processed
        // Math.Mod(integerValue1, integerValue2)
        // Returns the remainder of integerValue1 divided by integerValue2.
        
        for (integer inputs:input){
            if(Math.Mod(inputs,3) == 0 && Math.mod(inputs,5) == 0){
                system.debug('DingDong');
            }
            else if (Math.Mod(inputs,3) == 0){
                system.debug('Ding');
            }
            else if (Math.Mod(inputs,5) == 0){
                system.debug('Dong');
            }
            else {
                system.debug(inputs);
            }
        }
    }

}