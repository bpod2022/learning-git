trigger AccUpdateTrigger on Account (before insert, before update, after insert, after update) {

        for(Account acc:Trigger.new){										// always have a FOR loop for Triger events
        
            If(Trigger.isBefore){											// only perform this action BEFORE the obejct is saved
                if(Trigger.isUpdate){        								// only perform this action if Update
                     acc.AccountNumber = 'AA5567';
                 }
            }
            
            if(Trigger.isAfter){        									// only perform this action if AFTER Obejct was saved
                if(Trigger.isInsert){        								// only perform this action if Insert
                    DemoMonday15Class.createContact('Testing Account');
                }
                if(Trigger.isUpdate){        								// only perform this action if Update
                    DemoMonday15Class.createContact('Testing Account');
                }
            }
        }
    
    
//    [7:06 pm] Afraz Siddiqui
//trigger AccountTrigger on Account (before insert, before update,after insert,after update) {            // when Account is created then Rating should always be Hot    
//    for(Account acc:Trigger.new){
//        If(Trigger.isBefore){
//            If(Trigger.isInsert){
//                if(acc.Name == 'Michael Hill'){
//                    acc.Rating = 'Hot';
//                    acc.Type = 'Other';
//                }
//            }
//            If(Trigger.isUpdate){
//                if(acc.Rating == 'Cold'){
//                    acc.Type = 'Prospect';
//                }
//            }
//        }
//        
//       // When Account is created with Name as "Testing Account" then contact should be created with Name as "Tester Contact" 
//               List<Contact> conList = new List<Contact>();
//        If(Trigger.isAfter){
//            If(Trigger.isInsert){
//                Contact con = new Contact();
//                con.FirstName = 'Tester';
//                con.LastName = 'Contact';
//                con.AccountId = acc.Id;
//                conList.add(con);
//                insert conList;
//            }
//            If(Trigger.isUpdate){
//            }
//        }
//    }
    
    
    
}