public with sharing class AddLineItems {
	public class AccWrapper{
		public integer index {get; set;}
		public Account acc{get; set;}
		public Accwrapper(integer a, Account b){
			index = a;
			acc = b;
		}
	}
	public List<AccWrapper> lstwrap{get; set;}
	public AddLineItems(){
		lstwrap = new List<Accwrapper>();
		lstwrap.add(new AccWrapper(0,new Account()));
	}
	
	public void AddAccount(){
		lstwrap.add(new AccWrapper(lstwrap.size(),new Account()));
	}
	public integer rowIndex{get; set;} 
	public void removeAccount(){
		lstwrap.remove(rowIndex);
		integer i =0;
		for(Accwrapper aw: lstwrap){
			aw.index = i;
			i++;
		}
		
	}
	
	public pagereference saverecords(){
		List<Account> lst = new List<Account>();
		for(AccWrapper aw: lstwrap){
			lst.add(aw.acc);
		}
		
		insert lst;
		pagereference ref = new pagereference('/apex/addLineItems');
		ref.setRedirect(true);
		return ref;
		
	}
	
}