trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {

//Create a trigger on Contact Object so that when Contact with Name "Warehouse Group" is created then
//Create a Opportunity with Name as "Golden Oppty" and associate with that Contact

 
    for(Contact con:Trigger.new){											// always have a FOR loop for Triger events
        
        List<Opportunity> oppToCreate = new List<Opportunity>();
        
            If(Trigger.isAfter){											// only perform this action BEFORE the obejct is saved
                if (con.FirstName == 'Warehouse' && con.LastName == 'Group'){
                    if(Trigger.isInsert){        								// only perform this action if Update
                        Opportunity opp = new Opportunity();
                        opp.Name = 'Golden Oppty';
                        opp.StageName = 'Prospecting';
                        opp.ContactID = con.Id;
                        oppToCreate.add(opp);
                    }
                    Insert oppToCreate;
                }
            }
        }
}