@isTest
private class AccountTriggerTest {
    
    @isTest
    private static void testAccountTrigger(){
        System.test.startTest();
        
        Account acc = new Account();
        acc.name = 'Michael Hill';
        insert acc;
        
        list<account> accList = [Select Id,Rating,Type from Account];
        string rating;
        string type;
        for (Account ac:accList){
            rating = ac.Rating;
            type = ac.type;
        }
        
        system.assertEquals('Hot', rating);
        system.assertEquals('Prospect', type);
        
        System.test.stopTest();
    }

    @isTest
    private static void testAccountUpateTrigger(){
        test.startTest();
        
        Account acc = new Account();
        acc.name = 'Mission Impossible';
        insert acc;
        
        list<account> accList = [Select Id,Rating,Type from Account];
        string rating = 'Warm';
        
        list<Account> accListToUpdate = new List<Account>();
        for (Account ac:accList){
            ac.Rating = rating;
            accListToUpdate.add(ac);
        }
        Update accListToUpdate;
        
        string type;
        for (Account a:accListToUpdate){
            type =a.type;
        }
        
        system.assertEquals('Other', type);
        
        test.stopTest();
    }


}