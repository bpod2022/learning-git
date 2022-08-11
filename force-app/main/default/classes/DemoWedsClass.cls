public class DemoWedsClass {

    public static void sumToHundred(){
        integer sum = 0;
        for (integer i=1; i<=100; i++){
            sum = sum + i;
        }
        system.debug(Sum);
    }

//----------------------------------------------------------------------------------------------
//
	public static void createAccount(){
        Account accountRecord = new Account();
        accountRecord.Name = 'My First Acc from Apex';
        accountRecord.Rating = 'Hot';
        insert accountRecord;
        System.debug(accountRecord);
    }
//----------------------------------------------------------------------------------------------
// create a method to creata a contact record in Salesforce
// First Name = 'John'
// Last Name = 'Pitt'
// Mobile Number = 12345
// Email = test@missionreadyhq.com
// Mailing address = 10a Beeche Place Birkdale  hint:MailingStreet+MailingCity

	public static void createContact(){
        Contact contactRecord = new Contact();
 		ContactRecord.FirstName  = 'Brian';
        ContactRecord.LastName = 'Fair';
        ContactRecord.MobilePhone = '789666';
        ContactRecord.Email = 'test@missionready.com';
        ContactRecord.MailingStreet = '20 Portabello Place Torbay';
        ContactRecord.MailingCity = 'Auckland';
        ContactRecord.MailingPostalCode = '0630';
        ContactRecord.MailingCountry  = 'New Zealand';
        ContactRecord.AccountId = '0015h00000wLtteAAC'; 		//* this assigns the new contact to an Account which is already created *//
        insert contactRecord;
        System.debug(contactRecord);
    }
//----------------------------------------------------------------------------------------------

    public static void createOpportunity(){
        Opportunity opportunityRecord = new Opportunity();
        opportunityRecord.AccountId = '0015h00000wLtteAAC';
		opportunityRecord.Name = 'A brand new opp';
        opportunityRecord.CloseDate = (date.today() + 7);
        opportunityRecord.ContactId = '0035h00000iqOdNAAU';
        opportunityRecord.StageName = 'Prospecting';
        insert opportunityRecord;
        system.debug(opportunityRecord);
        
    }
    
//----------------------------------------------------------------------------------------------
// Bulk create records in salesforce
// create 5 accounts with name as Demo Account
	
    public static void createBulkAccounts(){

        List<Account> accList = new List<Account>();

        Account account1 = new Account();
        account1.Name = 'Demo Account1';
        account1.Rating = 'Hot';
        accList.add(account1);

        Account account2 = new Account();
        account2.Name = 'Demo Account2';
        account2.Rating = 'Hot';
        accList.add(account2);

        Account account3 = new Account();
        account3.Name = 'Demo Account3';
        account3.Rating = 'Hot';
        accList.add(account3);

        Account account4 = new Account();
        account4.Name = 'Demo Account4';
        account4.Rating = 'Hot';
        accList.add(account4);

        Account account5 = new Account();
        account5.Name = 'Demo Account5';
        account5.Rating = 'Hot';
        accList.add(account5);

        insert accList;
        System.debug(accList);

    }
//-----------------------------------------------------------------------------------------
// create 2 contacts in salesforce
// execute below statements
//     List<contact> outputList = DemoWedsClass.createTwoContacts();
//     system.debug(outputlist);
 
 	public static List<Contact> createTwoContacts(){
        List<contact> contactList = new List<contact>();
		
        Contact contact1 = new contact();
 		Contact1.FirstName  = 'Gilles';
        Contact1.LastName = 'Rabaud';
        Contact1.MobilePhone = '554466';
        Contact1.Email = 'gillesr@missionready.com';
        Contact1.MailingStreet = '21 Portabello Place Torbay';
        Contact1.MailingCity = 'Auckland';
        Contact1.MailingPostalCode = '0630';
        Contact1.MailingCountry  = 'New Zealand';
        Contact1.AccountId = '0015h00000wLtteAAC'; 		//* this assigns the new contact to an Account which is already created *//
        contactList.add(contact1);
        
        Contact contact2 = new contact();
 		Contact2.FirstName  = 'Shaun';
        Contact2.LastName = 'Budgie';
        Contact2.MobilePhone = '827193';
        Contact2.Email = 'shaunb@missionready.com';
        Contact2.MailingStreet = '19a Portabello Place Torbay';
        Contact2.MailingCity = 'Auckland';
        Contact2.MailingPostalCode = '0630';
        Contact2.MailingCountry  = 'New Zealand';
        Contact2.AccountId = '0015h00000wLtteAAC'; 		//* this assigns the new contact to an Account which is already created *//
        contactList.add(contact2);

        insert contactList;
        System.debug(contactList);
        
        return contactList;
    }   
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  

// Create a method which creates Account and contact
// Associate account with that Contact and Opportunity
    
    public static void createAccountAndContact(){
        
        Account acc = new Account();
        acc.Name = 'Demo Account';
        acc.Rating = 'Hot';
        insert acc;
        
        Contact con = new Contact();
        con.FirstName = 'Daffy';
        con.LastName = 'Duck';
        con.AccountId = acc.Id ;
        insert con;
        
        Opportunity opp = new Opportunity();
        opp.Name = 'Thurs New Opportunity';
        opp.AccountID = acc.Id;
        insert opp;
        
        System.debug(acc);
        System.debug(con);
        System.debug(opp);
        
    }    
   
}