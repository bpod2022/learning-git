trigger AccountTrigger on Account (before insert, before update) {		// this trigger happens whenever a new Account is created or updated

    // when Account is created then Rating should always be HOT
    
    for(Account acc:Trigger.new){					// always have a FOR loop for Triger events
        
        if(Trigger.isInsert){        				// only perform this action if NEW
            if(acc.Name == 'Michael Hill'){
            	acc.Rating = 'HOT';
        		acc.Type = 'Prospect';
            }
        }
        
        if(Trigger.isUpdate){        				// only perform this action if Update
        	acc.Rating = 'Warm';
        	acc.Type = 'Other';
        }    
    }
    
}