trigger DOBTrg on Contact (before insert, before update) {
    
    
    Contact con = trigger.new[0];
    //Days_lived__c
    if(con.Birthdate != null){
        date cDate = System.Today();
        
        con.Days_lived__c = con.Birthdate.daysBetween(cDate);
    
    }
    
}