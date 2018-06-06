trigger DuplicateRecordActivityTrigger on Activity__c (before insert,before update) {
 List<Activity__c > StaActiList = [Select Name from Activity__c ];  
for (Activity__c  staActnew : Trigger.new)
  {      
    for(Activity__c sa: StaActiList)
        {         
               if(sa.name == staActnew.name)         
                  {              
                    staActnew.name.addError('This Activity already existed');        
                  }     
       } 
  }


}