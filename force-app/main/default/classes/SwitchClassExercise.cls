public class SwitchClassExercise {
    public static void checkDay() {
        string dayOfWeek = 'Sunday';
        switch on dayOfWeek {
            when 'Friday' {
                system.debug ('Friday drinks');
            }
            when 'Saturday'{
                system.debug('Sports day');
            }
            when 'Sunday'{
                system.debug('Family day');
            }
            when else {
                system.debug('Exciting work');
            }            
        }
    }
}