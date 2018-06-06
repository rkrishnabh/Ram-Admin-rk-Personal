trigger SourceTrg on Lead (after insert, after update) {
	
	Lead ld = trigger.new[0];
	
	if(triggecls.isUpdated == false){
		triggecls.isUpdated = true;
		triggecls.updateRecord(ld.Id);
	}
	
	
}