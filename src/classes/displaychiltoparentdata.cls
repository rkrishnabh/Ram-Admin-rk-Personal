public with sharing class displaychiltoparentdata {

public List<ctrla51__Batch__c> displaybatch {get;set;}


public pageReference show()
{
        displaybatch=[select id,name,ctrla51__training__r.id,ctrla51__training__r.name from ctrla51__Batch__c];
                    
        return null;


}

}