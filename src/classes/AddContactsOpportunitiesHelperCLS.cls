Public class AddContactsOpportunitiesHelperCLS{

Public static List<AddContactsOpportunitiesCLS.WrapperContactsList> addNewRowToContactList(List<AddContactsOpportunitiesCLS.WrapperContactsList> waConObjList){
        AddContactsOpportunitiesCLS.WrapperContactsList newRecord = new AddContactsOpportunitiesCLS.WrapperContactsList();
        Contact newContactRecord = new Contact();        
        newRecord.record = newContactRecord;
        newRecord.index = waConObjList.size();
        waConObjList.add(newRecord);
        return waConObjList;
}


public static List<AddContactsOpportunitiesCLS.WrapperContactsList> removeRowToContactList(Integer rowToRemove, List<AddContactsOpportunitiesCLS.WrapperContactsList> waConList){
        waConList.remove(rowToRemove);
        return waConList;
}

/*  adding opportunities to the list */
Public static List<AddContactsOpportunitiesCLS.WrapperOpportunitiesList> addNewRowToOpportunityList(List<AddContactsOpportunitiesCLS.WrapperOpportunitiesList> waOppObjList){
        AddContactsOpportunitiesCLS.WrapperOpportunitiesList newRecord = new AddContactsOpportunitiesCLS.WrapperOpportunitiesList();
        Opportunity newOpportunityRecord = new Opportunity();        
        newRecord.record = newOpportunityRecord;
        newRecord.index = waOppObjList.size();
        waOppObjList.add(newRecord);
        return waOppObjList;
}



public static List<AddContactsOpportunitiesCLS.WrapperOpportunitiesList> removeRowToOpportunityList(Integer rowToRemove, List<AddContactsOpportunitiesCLS.WrapperOpportunitiesList> waOppList){
        waOppList.remove(rowToRemove);
        return waOppList;
}
    
public static boolean save(String accId,List<AddContactsOpportunitiesCLS.WrapperContactsList> waConList  ,List<AddContactsOpportunitiesCLS.WrapperOpportunitiesList> waOppList) {
  boolean statusFlag = true;    
  system.debug('==waConList==>'+waConList.size());
  system.debug('==waOppList==>'+waOppList.size());
    
    try{
        
        List<Contact> contactRecordsToBeInserted = new List<Contact>();
        if(waConList !=null && !waConList.isEmpty()){
            for(AddContactsOpportunitiesCLS.WrapperContactsList eachRecord : waConList ){
                Contact conTemp = eachRecord.record;
                conTemp.AccountId = accId;
                contactRecordsToBeInserted.add(conTemp);
               
          }
            system.debug('==contactRecordsToBeInserted==>'+contactRecordsToBeInserted.size());
            upsert contactRecordsToBeInserted;
        }
    List<Opportunity> opportunityRecordsToBeInserted = new List<Opportunity>();
     if(waOppList != null && !waOppList.isEmpty()) {
       for(AddContactsOpportunitiesCLS.WrapperOpportunitiesList eachRecord : waOppList ){
                Opportunity oppTemp = eachRecord.record;
                oppTemp.AccountId = accId;
                opportunityRecordsToBeInserted.add(oppTemp);
               
            }
         
          system.debug('==opportunityRecordsToBeInserted==>'+opportunityRecordsToBeInserted.size());
            upsert opportunityRecordsToBeInserted;
     }
        
    }catch(Exception e){
        system.debug('Exception occure in save method..of helper classs-->'+e);
        statusFlag =false;
    }
       
    return statusFlag;
    
    }    



}