trigger CreateConTrg on Account (after insert) {
    
        List<Contact> lstcon = new List<Contact>();
        for(Account acc : trigger.new){
        
           if(acc.Create_Contact__c == true){
                
                Contact con = new Contact();
                con.LastName = acc.name+' Contact';
                con.AccountId = acc.Id;
                con.Phone = acc.phone;
                //insert con;
                lstcon .add(con);
            
            }
        }
       if(lstcon .size()>0)
        insert lstcon ;
        
        system.debug('++++++'+lstcon );
        list<account> listins=new list<account>();
        for(contact c:lstcon ){
        List<Account> accs =new List<Account>([SELECT Id, Name FROM Account where id =:c.AccountId ]); 
         
       
       system.debug('++++++'+accs );
        
        }
    
    
}