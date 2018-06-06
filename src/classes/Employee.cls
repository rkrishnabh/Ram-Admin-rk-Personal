public with sharing class Employee {

	public string eName{get; set;}
	public string ePhone{get; set;}
	public string eEmail{get; set;}
	public integer eSal{get; set;}
	public integer eAnnual{get; set;}
	
	public Employee(string a, string b, string c, integer d){
		eName = a;
		ePhone = b;
		eEmail = c;
		eSal = d;
		eAnnual = eSal*12;
	}
	
	
}