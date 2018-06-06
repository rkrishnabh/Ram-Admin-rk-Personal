trigger DuplicateRecordActivityType on Activity_Type__c (before insert,before update) {
 List<Activity_Type__c > ActitypeList = [Select Name from Activity_Type__c ];  
for (Activity_Type__c staActnew : Trigger.new)
  {      
    for(Activity_Type__c sa: ActitypeList )
        {         
               if(sa.name == staActnew.name)         
                  {              
                    staActnew.name.addError('Duplicate record on this Activit Type Name');        
                  }     
       } 
  }


}