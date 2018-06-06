global class batchcls implements database.Batchable<sobject>{
	
	global List<Case> start(Database.BatchableContext bc){
		
		return [Select id from Case];
	}
	
	global void execute(Database.BatchableContext bc,List<Case> lst){
		delete lst;
	}
	
	global void finish(Database.batchableContext bc){
		
		batchContactcls obj = new batchContactcls();
		database.ExecuteBatch(obj); 
		
	}
	
	
}