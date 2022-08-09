public class CustomerTypeClass {

    public static void discountMethod() {
        string customer_type = 'Normal';
        decimal discount_rate ;
        boolean premium_support;

        if(customer_type == 'Premium')
        {
            premium_support = True;
        	discount_rate = 0.1;
        }
        Else if(customer_type == 'Normal')
        {
            premium_support = False;
        	discount_rate = 0.05;
        }
        Else {system.debug('Select customer type..');}
        
        system.debug('Premium Support is: ' + premium_support + ' and discount rate is ' + discount_rate);
     }



    public static void switchonDay () {
        String dayofWeek = 'Friday';
        String wordsToDisplay;
        
        switch on dayofWeek{
            when 'Friday'{
                wordsToDisplay = 'Friday Drinks';}
            when 'Saturday'{
                wordsToDisplay = 'Sports day';}
            when 'Sunday'{
                wordsToDisplay = 'Family day';}
            when else{
                wordsToDisplay = 'Exciting work';}
        }
        system.debug(wordsToDisplay);
    }
}