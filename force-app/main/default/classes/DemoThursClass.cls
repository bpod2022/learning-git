public class DemoThursClass {

    //Update a record in Salesforce
    
    public static void updateAccount(){
    	Account acc = new Account(Id='0015h00000xM1ePAAS');
    	acc.Name = 'Just updated Demo Account';
    	update acc;
    }

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    	// Update Contact record in Salesforce
    	
    public static void updateContact(){
    	Contact con = new Contact(Id='0035h00000iqfDXAAY');
    	con.Phone = '021456789';
        update con;
    }
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    // create 5 contacts Test1, Test2, Test3, Test4, Test5
    // update Title field on Contact to Developer
    

	public static void createContacts(){
        Contact con1 = new Contact();
        con1.FirstName = 'Test';
        con1.LastName = '1';
        insert con1;
    
        Contact con2 = new Contact();
        con2.FirstName = 'Test';
        con2.LastName = '2';
        insert con2;
        
        Contact con3 = new Contact();
        con3.FirstName = 'Test';
        con3.LastName = '3';
        insert con3;
        
        Contact con4 = new Contact();
        con4.FirstName = 'Test';
        con4.LastName = '4';
        insert con4;
        
        Contact con5 = new Contact();
        con5.FirstName = 'Test';
        con5.LastName = '5';
        insert con5;
        
        Contact con1ToUpdate = new Contact(Id=con1.Id);
        con1ToUpdate.Title = 'Developer';
        update con1ToUpdate;
        
        Contact con2ToUpdate = new Contact(Id=con2.Id);
        con2ToUpdate.Title = 'Developer';
        update con2ToUpdate;
        
        Contact con3ToUpdate = new Contact(Id=con3.Id);
        con3ToUpdate.Title = 'Developer';
        update con3ToUpdate;
        
        System.debug(con1ToUpdate);
        System.debug(con2ToUpdate);
        System.debug(con3ToUpdate);
    }
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    // create 3 contacts Test1, Test2, Test3
    // update Department field to Testing Lab
    
      public static void createandUpdateContactsBulk(){
        
        List<Contact> contactList = new List<Contact>();		// create a list to add each record for new contact
        
        Contact con1 = new Contact();
        con1.FirstName = 'Test';
        con1.LastName = '1';
        contactList.add(con1);
        
        Contact con2 = new Contact();
        con2.FirstName = 'Test';
        con2.LastName = '2';
        contactList.add(con2);
        
        Contact con3 = new Contact();
        con3.FirstName = 'Test';
        con3.LastName = '3';
        contactList.add(con3);
        
        insert contactList;										// insert all new records at once - more efficient than one at a time
        System.debug(contactList);
        
        List<Contact> updatedContactList = new List<Contact>(); // setup a new list to add theprevious list plus the new field of Department wih a value
        
        for(Contact con:contactList){							// process through a loop to update the contact list inlcuding the Department field
            con.Department = 'Testing Lab';
            updatedContactList.add(con);
        }        
        
        update updatedContactList;
        System.debug(updatedContactList);
        
        
    }    
	
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    // Create 2 Leads records  as     
	// 1) Name === ANZ Bank/Toyota New Zealand     
	// 2) Company Name === Testing Customer    
	// After Lead is created update these leads 'Rating' as "Hot"
	// Required fields on Lead -- FirstName,LastName,Status and Company


      public static void createandUpdateLeadsBulk(){
        
        List<Lead> leadList = new List<Lead>();					// create a list to add each record for new Lead
        
        Lead led1 = new Lead();
        led1.FirstName = 'ANZ Bank';
        led1.LastName = '.. ';
        led1.Company = 'Testing Customer';
        leadlist.add(led1);
        
        Lead led2 = new Lead();
        led2.FirstName = 'Toyota New Zealand';
        led2.LastName = '.. ';
        led2.Company = 'Testing Customer';
        leadlist.add(led2);
                
        insert leadList;										// insert all new records at once - more efficient than one at a time
        System.debug(leadList);
        
        List<Lead> updatedLeadList = new List<Lead>(); 			// setup a new list to add the previous list plus the new field of Department wih a value
        
        for(Lead led:leadList){									// process through a loop to update the contact list inlcuding the Department field
            led.Status = 'HOT';
            updatedLeadList.add(led);
        }        
        
        update updatedLeadList;
        System.debug(updatedLeadList);
        
        
    }    
    
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    // Create a method to fetch 5 Accounts from Salesforce
     
    public static void getAccounts(){
        //SELECT Id, Name FROM Account    ... this is the query text used to query the Object
        
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 5];	// create a list to save the Account details read by the Query
                
        // udpate these Account 'Type' field to 'Customer - Direct'
        
        List<Account> updatedAccountList = new List<Account>();		// create a new list for the set of records once updated
        
        for(Account acc:accList){					// Account = Object; acc = variable; accList is the initial list of records retrieved by the Query
            acc.Type = 'Customer - Direct';			// add or change the data element
            updatedAccountList.add(acc);			// make sure to store this updated data element to the List
        }
        update updatedAccountList;					// Commit the data back to the Object
    }

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    // Create a method to fetch 5 Opportunities and update Close Date to today
     
    public static void getOpportunity(){
        //SELECT Id, Name, CloseDate FROM Opportunity   ... this is the query text used to query the Object
        
        List<Opportunity> oppList = [SELECT Id, Name, CloseDate FROM Opportunity LIMIT 5];	// create a list to save the Opportunity details read by the Query
                
        // update these Opportunities Close Date field to Today
        
        List<Opportunity> updatedOpportunityList = new List<Opportunity>();		// create a new list for the set of records once updated
        
        for(Opportunity opp:oppList){					// Opportunity = Object; opp = variable; oppList is the initial list of records retrieved by the Query
            opp.CloseDate = Date.Today();				// add or change the data element
            updatedOpportunityList.add(opp);			// make sure to add a new entry into the new list inlcuding the new/updated data field
        }
        update updatedOpportunityList;					// Commit the data back to the Object
    }

}