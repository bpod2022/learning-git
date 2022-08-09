public class ForLoopClass {

	public static void myLoop(){
        String MyName = 'Brendan';
        Integer i;
        for (i =1; i<5; i++){
            //if (i == 3){continue;}
            if (i == 3){break;}
            system.debug(MyName + '  ' + i);    
        }
        system.debug('outside the loop  ' + MyName + '  ' + i);
    }

//-----------------------------------------------------------------------------------------
// print Hello 10 times

    public static void printHello(){
        
        for (integer i=0; i<=10; i++){
            
            system.debug('Hello ' + i);
        }
    }    
//----------------------------------------------------------------------------------------

	public static void listExample(){

        List<String> colours = new List<String>();
		colours.add('Red');
        colours.add('Blue');
        colours.add('Green');
        colours.add('Yellow');
        colours.add('Orange');
     
        system.debug(colours);
        
        for(String color:colours){
            system.debug(color);
        }
        
    }
//---------------------------------------------------------------------------------------
//
	public static void listCars(){

        List<String> cars = new List<String>();
		cars.add('Toyota');
        cars.add('Volkswagen');
        cars.add('Ford');
        cars.add('Chrysler');
        cars.add('Ferrari');
               
        for(String car:cars){
            system.debug(car);
        }
        
    }



  
}