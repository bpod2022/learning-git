public class ListExerciseClass {
    public static void bowl () {
        List<string> friends = new list<string>();
        friends.add('Ada');
        friends.add('Bill');
        friends.add('Cam');
        friends.add('Doug');
        system.debug(friends[2]);
       
        friends.set(2, 'Clive');
        friends.get(2);
        system.debug(friends[2]);
        
       	// remove Cam
       	//	friends.remove(2);
       	//	system.debug(friends[2]);
       
       	//	friends.clear();
       	//	system.debug(friends[0]);
       
       		system.debug(friends.size());                            
    }
}