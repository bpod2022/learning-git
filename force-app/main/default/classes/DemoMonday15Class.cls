public class DemoMonday15Class {

//1) Create 3 accounts manually in your org "Testing Account"//
//2) Create a method "CreateContacts" in apex class which get all these accounts and create 1 contact for each account with Name as "Tester Contact"//

  public static void createContact(String accname){
    	
       	List<Account> accToUse = [SELECT Id, Name FROM Account where Name =: accname];

        List<Contact> conToCreate = new List<Contact>();
        
        for(Account acc:accToUse){            
            
                Contact con1 = new Contact();
                con1.FirstName = 'Testeryy';
                con1.LastName = 'Contactyy';
                con1.AccountId = acc.Id;
                conToCreate.add(con1);
        }  
      	
      	Insert ConToCreate;
      
  		system.debug(accToUse) ;
      	system.debug(conToCreate);
  }
}