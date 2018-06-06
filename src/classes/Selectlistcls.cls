public with sharing class Selectlistcls {

public List<account> lstaccount1{get;set;}
    public PageReference display() {
    
    lstaccount1=new List<account>();
    lstaccount1=[select id,name from account where id=:selected];
    system.debug('------>'+selected);
    system.debug('@@@@@@@@@@>'+lstaccount1);
        return null;
    }


    public List<SelectOption> getItems() {
    
    List<SelectOption> options=new List<SelectOption>();
    options.add(new selectOption('','----None----'));
   List<account> lstaccount= [select id,name from account limit 10];
       
       for(Account a:lstaccount){
        options.add(new selectOption(a.id,a.name));
       
       }
        return options;
    }

  //public List<selected > selected { get; set; }
    public String selected { get; set; }
}