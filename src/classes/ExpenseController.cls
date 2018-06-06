public with sharing class ExpenseController {

     //ns = namespace, otherwise leave out ns__  
    
	@AuraEnabled
	public static List<ctrla51__Expense__c> getExpenses() { //safe
        String [] expenseAccessFields = new String [] {'Id',
                                                       'Name',
                                                       'ctrla51__Amount__c',
                                                       'ctrla51__Client__c',
                                                       'ctrla51__Date__c',
                                                       'ctrla51__Reimbursed__c',
                                                       'CreatedDate'
                                                       };


        // Obtaining the field name/token map for the Expense object
        Map<String,Schema.SObjectField> m = Schema.SObjectType.ctrla51__Expense__c.fields.getMap();

        for (String fieldToCheck : expenseAccessFields) {
						system.debug('????????'+fieldToCheck);
          // Check if the user has access to view field
        if ( !m.get(fieldToCheck).getDescribe().isAccessible() && !m.get(fieldToCheck).getDescribe().isCreateable() && !m.get(fieldToCheck).getDescribe().isUpdateable()){
					//system.debug('-------'+m.get(fieldToCheck).getDescribe().isAccessible());
					
               //also pass error to client
               throw new System.NoAccessException();
                return null;
               //included to quiet editor
              
            }
            system.debug(' &&&&&&&&&& isAccessible'+m.get(fieldToCheck).getDescribe().isAccessible());
            
             system.debug(' &&&&&&&&&& is createable'+m.get(fieldToCheck).getDescribe().isCreateable());
            system.debug(' &&&&&&&&&& is Updateable' +m.get(fieldToCheck).getDescribe().isUpdateable());
         }
 
         //now it is safe to proceed with call
         return [SELECT Id, Name, ctrla51__Amount__c, ctrla51__Client__c, ctrla51__Date__c, 
                     ctrla51__Reimbursed__c, CreatedDate FROM ctrla51__Expense__c];
    	       
       } 
    @AuraEnabled
       public static ctrla51__Expense__c saveExpense(ctrla51__Expense__c expense) {
        String [] expenseAccessFields1 = new String [] {'Id',
                                                       'Name',
                                                       'ctrla51__Amount__c',
                                                       'ctrla51__Client__c',
                                                       'ctrla51__Date__c',
                                                       'ctrla51__Reimbursed__c',
                                                       'CreatedDate'
                                                       };


        // Obtaining the field name/token map for the Expense object
        Map<String,Schema.SObjectField> m1 = Schema.SObjectType.ctrla51__Expense__c.fields.getMap();
	
        for (String fieldToCheck1 : expenseAccessFields1) {
					//system.debug('******'+fieldToCheck1);
          // Check if the user has access to view field
         // if ( !m1.get(fieldToCheck1).getDescribe().isAccessible() && !m1.get(fieldToCheck1).getDescribe().isCreateable() && !m1.get(fieldToCheck1).getDescribe().isUpdateable()){
			if ( !m1.get(fieldToCheck1).getDescribe().isCreateable() && !m1.get(fieldToCheck1).getDescribe().isUpdateable()){

              
				// system.debug('-------'+m.get(fieldToCheck).getDescribe().isCreateable());
                //also pass error to client
               throw new System.NoAccessException( );
                return null;
               //included to quiet editor
              
            }
            
           
           system.debug('******  is Accessible'+m1.get(fieldToCheck1).getDescribe().isAccessible());
             system.debug('******  is createable'+m1.get(fieldToCheck1).getDescribe().isCreateable());
            system.debug('******  is Updateable'+m1.get(fieldToCheck1).getDescribe().isUpdateable());
			 //upsert expense;
              //return expense;
         }
		
    // Perform isUpdateable() check here
    //if (!Schema.sObjectType.ctrla51__Expense__c.fields.ctrla51__Amount__c.isCreateable() && !Schema.sObjectType.ctrla51__Expense__c.fields.ctrla51__Amount__c.isUpdateable()){
  //return null;
//}
	
		//System.debug('==========>'+expense);
		upsert expense;
		return expense;
	
   
}
 }