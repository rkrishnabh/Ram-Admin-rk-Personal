public with sharing class triggecls {
	
	public static boolean isUpdated = false;
	
	
	public static void updateRecord(Id recId){
		
		Lead newld = new Lead(Id=recId);
		newld.LeadSource = 'Web';
		update newld;
	
	}
}