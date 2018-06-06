trigger AccDeleteTrg on Account (before delete) {
	
	Account acc = trigger.old[0];
	
	List<Contact> lst = [Select id from Contact where AccountId =: acc.Id];
	if(lst.size()>0)
		acc.addError('You cannot delete this Account');	
	
	
}