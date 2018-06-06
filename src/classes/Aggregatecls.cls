public with sharing class Aggregatecls {
	
	public Aggregatecls(){
	
		lstwrap = new List<accwrapper>();
		List<Aggregateresult> lst = [Select count(id) cnt,Account.Name acc from case group by Account.Name];
		
		for(AggregateResult ar : lst){
			if(string.valueOf(ar.get('acc')) != null)
			lstwrap.add(new accWrapper(string.valueOf(ar.get('acc')),integer.valueOf(ar.get('cnt'))));
		}
		
		
	
	}
	
	public List<accWrapper> lstwrap{get; set;}
	
	public class accWrapper{
	
		public string accName{get; set;}
		public integer casecount{get; set;}
		
		public accWrapper(string s, integer i){
			accName = s;
			casecount = i;
		}
	
	}
	
	
}