trigger CreateConTrg1 on Account (after insert) {
    
        List<Contact> lst = new List<Contact>();
        for(Account acc : trigger.new){        
                Contact con = new Contact();
                con.LastName = acc.name+' Contact';
                con.AccountId = acc.Id;
                con.Phone = acc.phone;
                //insert con;
                lst.add(con);
            
            }
        
       
        insert lst;
    
    
}