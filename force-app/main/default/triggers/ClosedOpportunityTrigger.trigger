trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
        List<Task> tasklist= new list<task>();
        for (Opportunity o : Trigger.New) {
            if(o.StageName =='Closed Won'){
                tasklist.add(new Task(Subject='Follow Up Test Task',
                WhatId = o.Id));
                
            }        
        }
        System.debug(tasklist);

        if(tasklist.size()>0)
            insert tasklist;
    
}