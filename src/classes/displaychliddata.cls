public with sharing class displaychliddata {


public list< ctrla51__Training__c> trininglst {get;set;}
    public pageReference show()
    {
    trininglst=[select id,name,(select id,name from ctrla51__Batchs__r) from ctrla51__training__c];
    return null;
    
    
    }







}