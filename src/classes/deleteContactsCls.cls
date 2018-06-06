public with sharing class deleteContactsCls {
	
	public List<contactwrapper> lstwrap{get; set;}
	
	public deleteContactsCls(){
		lstwrap = new List<ContactWrapper>();
		for(Contact con : [Select id, name, phone, email from Contact order by name]){
			lstwrap.add(new contactwrapper(false,con));
		}
	
	}
	
	public pagereference deleteContacts(){
		List<Contact> lstTodel = new List<Contact>();
		for(contactwrapper cw : lstwrap){
			if(cw.ischeck == true)
				lstTodel.add(cw.con);
		}
		
		if(lstTodel.size()>0){
			delete lstTodel;
		}
		
		pagereference ref = new pagereference('/apex/deleteContacts');
		ref.setredirect(true);
		return ref;
	
	}
}