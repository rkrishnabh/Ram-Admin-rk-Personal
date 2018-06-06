public with sharing class wrapper1cls {
	
	public List<Employee> lstEmp{get; set;}
	
	public wrapper1cls(){
	
		lstEmp = new List<Employee>();
		
		
		lstEmp.add(new Employee('ABC','12423412','c@k.com',5000));
		lstEmp.add(new Employee('BCD','12423412','c@k.com',6000));
		lstEmp.add(new Employee('CDE','12423412','c@k.com',7000));
		lstEmp.add(new Employee('GHI','12423412','c@k.com',8000));
	
	}
	
	
	
}