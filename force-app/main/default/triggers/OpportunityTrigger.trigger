trigger OpportunityTrigger on Opportunity (before insert, before update, after update) {

//Create a Trigger on Opportunity that set the following field values
//
//On Create of Opportunity
//1) Opportunity Name - Todays Open Opportunoty
//2) Stage -- Prospecting
//
//On Update of Opportunity
//1) Close date - Today
//2) Stage -- Closed Won
   
    for(Opportunity opp:Trigger.new){					// always have a FOR loop for Triger events
    
        if(trigger.isInsert){
            opp.Name = 'Todays open Opportunity';
            opp.Stagename = 'Prospecting';
        }
        
        if(trigger.isUpdate){
            opp.CloseDate = date.Today();
            opp.Stagename = 'Closed Won';
        }
        
//        if(trigger.isAfter){
//            opp.CloseDate = date.Today()+7;
//            opp.Stagename = 'Needs Analysis';
//        }
	}
}