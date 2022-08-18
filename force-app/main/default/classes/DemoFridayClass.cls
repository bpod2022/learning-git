public class DemoFridayClass {
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    // Create a method to create 2 Accounts --  Warehouse and Noel Leeming
    // Create one contact for each account - Warehouse Sales Engineer; Noel Leeming Sales Engineer
    // write query on all contacts which are created Today and set Department as "Household Appliances"
        
    public static void createAccountContact(){
    
       	List<Account> accToCreate = new List<Account>();		// create a list to add each record for new Account

        Account acc1 = new Account();
        acc1.Name = 'Warehouse';
        accToCreate.add(acc1);
        
        Account acc2 = new Account();
        acc2.Name = 'Noel Leeming';
        accToCreate.add(acc2);
        
        insert accToCreate;
        
        List<Contact> conToCreate = new List<Contact>();
        
        for(Account acc:accToCreate){            
            if( acc.Name == 'Warehouse' ){
                Contact con1 = new Contact();
                con1.FirstName = 'Warehouse';
                con1.LastName = 'Sales Enginer';
                con1.AccountId = acc.Id;
                conToCreate.add(con1);
            }   
            if( acc.Name == 'Noel Leeming' ){
                Contact con2 = new Contact();
                con2.FirstName = 'Noel Leeming';
                con2.LastName = 'Sales Enginer';
                con2.AccountId = acc.Id;
                conToCreate.add(con2);
            }  
        }  							// close FOR LOOP
        insert conToCreate;
        
        List<Contact> conList = [Select Id, Name, Department, CreatedDate FROM Contact where CreatedDate = Today]; // create a list to save the Contact details read by the Query
        
        // update these Contacts and set Department to "Household Appliances"
        List <Contact> conToUpdate = new List <Contact>();		// create a new list for the set of records once updated
        
        for(Contact con:conList){								// Opportunity = Object; opp = variable; oppList is the initial list of records retrieved by the Query
            con.Department = 'Household Appliances';			// add or change the data element
            conToUpdate.add(con);								// make sure to add a new entry into the new list inlcuding the new/updated data field
        }
        update conToUpdate;										// Commit the data back to the Object
    }
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Create a method which accept Account Id as Parameter
// This method get all the Contacts for that Account ID and which  Department as  'Household Applicances'
// It should update the Mailing country of those contacts as New Zealand
	
    public static void updateContactCountry(String accountId){
        
        // use a query to get the required records from the object using the input parameter
        List<Contact> conList = [SELECT Id,Department,MailingCountry,AccountId FROM Contact where AccountId =: accountId and Department = 'Household Appliances'];
    
        List<Contact> contactToUpdate = new List<Contact>();		//create a new list to use for holding record data to use for update
        
        for(Contact con:conList){									// loop thru all records returned by the query
            con.MailingCountry = 'New Zealand';
            contactToUpdate.add(con);
        }
        update contactToUpdate;
	}
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Create a method to create Opportunity and should accept input from the user of = Stage, Amount, Type ,AccountId
// Also write query to show the opportunity created in logs along with where conditon  
// DemoFridayClass.createOpportunity('Prospecting', 99886.55, 'New Customer', '0015h00000tYDHtAAO');

    public static void createOpportunity(String Stage, Decimal Amount, String Type, String AccountId){
        
        Opportunity opp = new Opportunity();
             
        opp.Name 		= 'Friday 2nd Opportunity';
        opp.StageName 	= Stage;
        opp.Amount 		= Amount;
        opp.Type 		= Type;
        opp.AccountId 	= AccountId;
        opp.CloseDate = date.today() +7;
        insert opp;
        System.Debug(opp);
        
        List<Opportunity> oppFind = [SELECT Id, CreatedDate, StageName FROM Opportunity where createddate = today and stagename ='New Customer'];
        system.debug(oppFind);
    }
        
}