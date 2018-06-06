global class batchAccountUpdate_undo implements Database.Batchable<sObject>{
    

    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id,Name FROM Opportunity';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Opportunity> scope)
    {
         for(Opportunity a : scope)
         {
             //check if has index update 
             a.Name= a.Name.substring(0,a.Name.indexOf('Updated'));
             //c.Name= c.Name.substring(0,c.Name.indexOf('Updated'));
    //b.add(c);
                     
         }
         update scope;
    } 
    global void finish(Database.BatchableContext BC)
    {
    }
    
    

}