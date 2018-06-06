global class batchContactcls implements database.Batchable<sobject>{
	
	global List<Contact> start(Database.BatchableContext bc){
		
		return [Select id from Contact];
	}
	
	global void execute(Database.BatchableContext bc,List<Contact> lst){
		delete lst;
	}
	
	global void finish(Database.batchableContext bc){
	
	}
	
	
}