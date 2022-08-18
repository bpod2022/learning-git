trigger CaseTrigger on Case (before insert, before update, after update) {

    for(Case cass:Trigger.new){								// always have a FOR loop for Triger events
        
            if(Trigger.isAfter){        					// only perform this action if AFTER Obejct was saved
                if(Trigger.isUpdate){        				// only perform this action if Update
                    If (cass.Priority == 'High'){
                    	
                       	Id accountID = cass.AccountId;
                        List<Account> accList = [SELECT ID,Rating from ACCOUNT where Id =: accountID ];
                        
                        List<Account> accToUpdate = new List<Account>();
                        For (Account acc:acclist){
                            acc.Rating = 'Hot';
                            accToUpdate.add(acc);
                        }									// end FOR loop
                        update accToUpdate;
                    }										// end IF = High
                }
                
//	When Case is Created with Priority as Low,then create an Account with Name as "Partner Account",Type as "Customer Direct"                
                if(Trigger.isInsert){        				// only perform this action if Update                    
                    If (cass.Priority == 'Low'){
                       	List<Account> accToInsert = new List<Account>();
                        Account acc = new Account();
                        acc.Name = 'Partner Account';
                        acc.Type = 'Customer Direct';
                        accToInsert.add(acc);
                        Insert accToInsert;
// Retrieve the Case record that then needs to be updated with the new Account ID that was created
                        Case updCase = [Select Id from Case where id =: cass.Id];
                        updCase.AccountId = acc.Id;
                        Update updCase;
                        }									// end IF LOW
                }											// end isInsert
            }												// end isAfter


    }														// end For

}															// end of Trigger