trigger createContactRecord1 on Account (after insert) {

     set<id> accId= new set<id>();
        
        for(account acc : trigger.new){
            
            if(acc.name!= null && acc.name != ''){
                
                accId.add(acc .id);
            }
        }
        
        
        system.debug('++AccId++'+accId);
        
               
                                
            List<Contact> lstcon = new List<Contact>();
        for(Account acc1 : trigger.new){
        
          
                
                Contact con = new Contact();
                con.LastName = acc1.name;
                con.AccountId = acc1.Id;
                con.Phone = acc1 .phone;
                //insert con;
                lstcon .add(con);
            
            
        }
       if(lstcon .size()>0)
        insert lstcon ;   
        
        
        list<contact> conids=[select id,lastname,AccountId  from contact where AccountId =:accId ];
                set<Id> setContactId=new Set<ID>(); 
                
                 
         system.debug('99999'+conids);
         
         
         List<account> listaccupdate=new  List<account>();
         
         for(contact c:conids){
         account a=new account();
         
         
         a.id=c.AccountId;
         a.ctrla51__City__c=c.lastname;
         a.ctrla51__con__c=c.id;
         listaccupdate.add(a);
         system.debug('qqqqqq'+listaccupdate);
         
         }
         update listaccupdate;
         
               


}