public class controller1cls {

    public PageReference saveRecord() {
        insert acc;
        insert con;
        pagereference ref = new pagereference('/'+acc.Id);
        return ref;
    }

    
    public Account acc{get; set;}
    public Gateway__c con{get; set;}
    public controller1cls(){
        acc= new Account();
        con = new Gateway__c ();
    }


}