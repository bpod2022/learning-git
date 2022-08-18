public class ContactTestingClass {
// 16 Aug 2022
// 1. Create method "CreateContact" -- should create a contact in Salesforce
// 2. Create a method "CreateContactwithInputParameters" -- input shuld be First Name and Last Name
// 3. Create a method "GetContacts" -- to query all contacts created today
// 
   
    Public Static void CreateContact(){
        
        Contact con = new Contact();
        con.FirstName = 'Simple';
        con.LastName = 'Wednesday';

        insert con;										// insert all new records at once - more efficient than one at a time
        System.debug(con);
        
    }
     
    Public Static Contact CreateContactWithInputParameters(String firstname, String lastname){
        
        Contact con = new Contact();
        con.FirstName = firstname;
        con.LastName = lastname;
               
        insert con;										// insert all new records at once - more efficient than one at a time
    	Return con;
    }
    
    Public Static List<Contact> GetContacts(){
        
	    List<Contact> contactList = [SELECT Id, LastName, FirstName, AccountId, CreatedDate FROM Contact where CreatedDate = Today];
		Return contactList;									
    }
}