public class AmapClass {
    public static void mapping () {
        Map<String, String> myFlavours = new Map<String, String>();
        myFlavours.put('Honey', 'Sweet');
        myFlavours.put('Anchovies', 'Salty');
        myFlavours.put('Vinegar', 'Tart');
        myFlavours.put('Sugar', 'Sweet');
        system.debug(myFlavours);
        
        myFlavours.remove('Honey');
        system.debug(myFlavours);
        system.debug(myFlavours.size());
        
        system.debug(myFlavours.get('Anchovies'));
    }
}