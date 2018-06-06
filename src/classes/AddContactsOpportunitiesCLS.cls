public class AddContactsOpportunitiesCLS {

public Account acc {get;set;}
public List<WrapperContactsList> waConList {get;set;}
public List<WrapperOpportunitiesList> waOppList {get;set;}
public Integer rowToRemove {get;set;}

public AddContactsOpportunitiesCLS (){
acc= new Account();
}

public void init(){
if(waConList ==null){
waConList = new List<WrapperContactsList>();
}
if(waOppList ==null){
 waOppList = new List<WrapperOpportunitiesList>();
}

}

public void addNewRowToConList(){
waConList = AddContactsOpportunitiesHelperCLS.addNewRowToContactList(waConList );
    
}

public void removeRowFromConList(){
  waConList = AddContactsOpportunitiesHelperCLS.removeRowToContactList(rowToRemove ,waConList );

}

public void addNewRowToOppList(){
     waOppList = AddContactsOpportunitiesHelperCLS.addNewRowToOpportunityList(waOppList );
}

public void removeRowFromOppList(){
   waOppList = AddContactsOpportunitiesHelperCLS.removeRowToOpportunityList(rowToRemove,waOppList );
}


Public class WrapperContactsList{
        public Integer index {get;set;}
        public Contact record{get;set;}
}

 public PageReference Cancel() {
  PageReference prf = new PageReference('/apex/AddContactsOpportunitiesVF');
  prf.setRedirect(true);
  return prf;
 }

public PageReference Save() {
 PageReference prf;
 boolean flag;
  if(acc.Name !=null && acc.Name !=''){
   upsert acc;
   if(acc.id != null ){
    flag = AddContactsOpportunitiesHelperCLS.save(acc.id,waConList,waOppList);
    if(flag){
      prf = new PageReference('/apex/AddContactsOpportunitiesCLs');
      prf.setRedirect(true);
     
     }
   }
  }
   return prf;
}


public class WrapperOpportunitiesList{
        public Integer index{get;set;}
        public Opportunity record{get;set;}
} 


}