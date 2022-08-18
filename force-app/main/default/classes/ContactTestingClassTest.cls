@isTest
Private class ContactTestingClassTest {

    //  This is a APEX CLASS specifically to test a Apex Class 

    @isTest
    private static void testCreateContact(){
        Test.StartTest();
        
        ContactTestingClass.CreateContact();
        
        List<Contact> conList = [Select id,name from Contact];
        System.debug(conList);
        
        String Name;
        For (Contact con:conList){
            Name = con.Name;
        }
	    
        System.assertEquals('Simple Wednesday', Name);
        
        Test.stopTest();
    }
  
    @isTest
    Private static void testCreateContactwithInputParameters(){
        
        Test.startTest();
        
        Contact con = ContactTestingClass.CreateContactWithInputParameters('Brendan', 'Wayne');
        list<Contact> conList = [Select Id,Name from Contact];
        system.debug(conList);
        
        String name;
        for(Contact co:conList){
            name = co.name;
        }
                
        system.assertEquals('Brendan Wayne', name);
            
        Test.stopTest();
    }
    
    @isTest
    Private Static void testGetContact(){
        
        Test.startTest();
        
        Contact con = new Contact();
        con.FirstName = 'Complex';
        con.LastName = 'Wednesday';
        insert con;
        System.debug(con);
                
        List<Contact> conlist = ContactTestingClass.GetContacts();
        String name;
        for(Contact co:conList){
            name = co.Name;
        }
        system.assertEquals('Complex Wednesday',name);
        
        Test.stopTest();
    }
    
}