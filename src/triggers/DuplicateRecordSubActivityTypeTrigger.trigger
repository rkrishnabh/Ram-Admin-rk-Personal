trigger  DuplicateRecordSubActivityTypeTrigger on Sub_Activity_Type__c (before insert,before update) {
 List<Sub_Activity_Type__c > subActitypeList = [Select Name from Sub_Activity_Type__c ];  
for (Sub_Activity_Type__c staActnew : Trigger.new)
  {      
    for(Sub_Activity_Type__c sa: subActitypeList )
        {         
               if(sa.name == staActnew.name)         
                  {              
                    staActnew.name.addError('Duplicate Duplicate Name on this Sub Activity Type');        
                  }     
       } 
  }

}