trigger GatewayTrg on Gateway__c (before insert, before update) {
	
	Gateway__c gw = trigger.new[0];
	
	gw.End_Date__c = gw.Start_Date__c.addDays(Integer.valueOf(gw.Duration__c));
	
	
	if(gw.Active__c == true){
		List<Gateway__c> lst = [Select id from Gateway__c where Active__c = true];
		if(lst.size()>0){
			//gw.addError('Active record exists. Please uncheck it and try again');
			for(Gateway__c g: lst){
				g.active__c = false;
			}
			
			update lst;
			
		}
	}
	
}