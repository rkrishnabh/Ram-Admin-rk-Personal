global class schedulecls implements Schedulable{
	
	global void execute(SchedulableContext sc){
		delete [Select id from Opportunity];
		
		/*
			batchcls obj = new batchcls();
			Id jobId = database.executeBatch(obj,100);	
		*/
	}
	
	
}