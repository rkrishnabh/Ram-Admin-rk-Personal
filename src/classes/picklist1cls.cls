public with sharing class picklist1cls {
	public string selValue{get; set;}
	public string dispValue{get; set;}
	public void fetch(){
		dispValue = selValue;
	}
	
	
}