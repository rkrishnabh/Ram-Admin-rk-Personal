public class controllercls {

    public string accName{get; set;}
    public string accPhone{get; set;}
    
    public controllercls(){
        //accName='test';
    }
    
    public pagereference saveRecord(){
        
        Account acc = new Account();
        acc.name = accName;
        acc.phone= accPhone;
        insert acc;
        
        pagereference ref = new pagereference('/'+acc.Id);
        return ref;
        
    }
    
    public pagereference saveNewRecord(){
        Account acc = new Account();
        acc.name = accName;
        acc.phone= accPhone;
        insert acc;
        
        pagereference ref = new pagereference('/apex/controller');
        ref.setredirect(true);
        return ref;
    }
    public pagereference cancel(){
        pagereference ref = new pagereference('/apex/login');
        return ref;
    }    
}