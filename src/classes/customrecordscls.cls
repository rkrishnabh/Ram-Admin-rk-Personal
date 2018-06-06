public class customrecordscls {

    public PageReference doViewAll() {
        searchtext='';
        lst = [Select id, name, phone, fax, Country__c  from Account order by name];
        return null;
    }


    public List<Account> lst{get; set;}
    
    public customrecordscls(){
        lst = [Select id, name, phone, fax, Country__c  from Account order by name];
    }
    public string recId{get; set;}
    public pagereference deleteRecord(){
        Account acc = new Account(Id = recId);
        delete acc;
/*        Account acc = [Select id from Account where Id=:recId];
        delete acc;*/
        pagereference ref = new pagereference('/apex/customrecords');
        ref.setredirect(true);
        return ref;
        
    }
    public string searchText{get; set;}
    public void doSearch(){
        
        lst = [Select id, name, phone, fax, Country__c  from Account where name like:'%'+searchtext+'%' order by name];
    
    
    }
    public string alpha{get; set;}
    public void searchByAlpha(){
        List<Account> lst=new List<Account> ();
        lst = [Select id, name, phone, fax, Country__c  from Account where name like:alpha+'%' order by name];        
    
    }
}