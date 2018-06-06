trigger Rolluptrg on Contact(after insert, after update, after delete, after undelete){
    Set<Id> accids = new Set<Id>();
    if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
        
        for(Contact con:trigger.new){
            if(con.AccountId != null){
                accids.add(con.AccountId);      
            }
        }
        
        
    }
    if(trigger.isUpdate || trigger.isDelete){
        
        for(Contact con: trigger.old){
            if(con.AccountId != null){
                accids.add(con.accountId);
            }
        }
    }
    
    List<Account> lst =[Select id, name,(Select id from Contacts) from Account where id in:accIds];
    for(Account acc : lst){
        acc.contacts_count__c = acc.contacts.size();
    }           
    update lst;
}