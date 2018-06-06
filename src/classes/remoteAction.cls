public with sharing class remoteAction {
	
	public string recId{get; set;}
	public string recName{get; set;}
	
	public void queryData(){
		if(recId != ''){
		Account acc = [Select id, name from Account where Id=:recId];
		recName = acc.Name;
		}	
	}
	
	
	@RemoteAction
	public static string query(string rId){
		Account acc = [Select id, name from Account where Id=:rId];
		return acc.name;
	}
	
}