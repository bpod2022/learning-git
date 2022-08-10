public class AfrazWedsClass {
    
    // Create a method to display 5 names of the cars using for loop
    public static void displayCars(){
        String cars;
        
        List<String> carList = new List<String>();
        carList.add('Audi');
        carList.add('BMW');
        carList.add('Mercedes');
        carList.add('Pajero');
        carList.add('Toyota');
        
        for(String car:carList){
            System.debug(car);
        }
        
    }    
    
    //Create a method that sum all the numbers from 1 to 100 e.g. Sum= 1+2+3+......+98+99+100
    public static void displaySum(){
        
        Integer finalSum=0;
        
        for(Integer i=1;i<=100;i++){            
            finalSum = finalSum+i;
        }
        System.debug(finalSum);// 5050
    }    
    
    // Create a method to create Account record in Salesforce
    public static void createAccount(){
        Account accountRecord = new Account();
        accountRecord.Name = 'My First Acc from Apex';
        accountRecord.Rating = 'Hot';
        insert accountRecord;
        System.debug(accountRecord);
    }
    // Create a method to create Contact record in Salesforce 
    // First Name = 'John'
    // Last Name = 'Pitt'
    // Mobile Number 12345
    // Email test@missionready.com
    // Mailing Address : 10a Beeche Place Birkdale hint: MailingStreet+MailingCity+...
    public static void createContact(){
        
        Contact newContactRecord = new Contact();
        newContactRecord.FirstName  = 'John';
        newContactRecord.LastName = 'Singh';
        newContactRecord.MobilePhone = '12345';
        newContactRecord.Email = 'john@missionready.com';
        newContactRecord.MailingStreet = '10a Beeche Place Birkdale';
        newContactRecord.MailingCity = 'Auckland';
        newContactRecord.MailingPostalCode = '0626';
        newContactRecord.MailingCountry  = 'New Zealand';
        newContactRecord.AccountId = '0015i00000LrdC6AAJ';
        insert newContactRecord;
        System.debug(newContactRecord);
        
    }
    // Create a method for creating new Opportunity  and associate with an Account
    public static void creatNewOpportunity(){

        Opportunity oppRecord = new Opportunity();
        oppRecord.AccountId = '0015i00000LrdC6AAJ';
        oppRecord.Name = 'Office Fit Out';
        oppRecord.CloseDate = Date.today();
        oppRecord.StageName = 'Qualification';
        oppRecord.Amount = 50000;
        insert oppRecord;
        System.debug(oppRecord);
    }
    // Bulk Create Records in salesforce
    // Create 5 accounts with Name as Demo Account
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
    
    // Create 2 contacts in salesforce with your and your friend's name 
    public static List<Contact>  createContacts(){
        
        List<Contact> contactList = new List<Contact>();
        
        Contact contact1 = new Contact();
        contact1.FirstName = 'Afraz';
        contact1.LastName = 'Siddiqui';
        contact1.AccountId = '0015i00000LrdC6AAJ';
        contactList.add(contact1);
        
        Contact contact2 = new Contact();
        contact2.FirstName = 'Bhaskar';
        contact2.LastName = 'Vashitha';
        contact2.AccountId = '0015i00000LrdC6AAJ';
        contactList.add(contact2);
        
        insert contactList;
        System.debug(contactList);
        
        return contactList;
    }
    
}