public with sharing class picklist2cls {
    public string selectedAcc{get; set;}
    public List<SelectOption> accOptions{get; set;}
    public List<SelectOption> conOptions{get; set;}
    public boolean show{get; set;}
    public picklist2cls(){
        accOptions = new List<SelectOption>();
        show = false;
        for(Account acc : [Select id, name from Account order by name]){
            accOptions.add(new SelectOption(acc.Id, acc.name));
        }
        
        
        
    }
    
    public void fetch(){
        
        if(selectedAcc != null){
            conOPtions = new List<Selectoption>();
            List<Contact> lst = [Select id, name from Contact where AccountId=:selectedAcc];
            for(Contact con : lst){
                conOptions.add(new SelectOption(con.Id, con.name));
            }
            if(lst.size()>0)
            show = true;
            else
            show = false;
        
        }
    
    
    }   
    
}