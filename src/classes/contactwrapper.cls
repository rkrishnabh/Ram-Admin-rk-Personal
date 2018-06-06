public with sharing class contactwrapper {
	
	public boolean ischeck {get; set;}
	public Contact con{get; set;}
	
	public contactwrapper(boolean b, Contact c){
		ischeck = b;
		con = c;
	
	}
}