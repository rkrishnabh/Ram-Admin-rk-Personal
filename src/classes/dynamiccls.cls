public with sharing class dynamiccls {
	
	public dynamiccls(){
	
		List<Schema.Sobjecttype> lst = Schema.getGlobaldescribe().values();
		objects = new List<String>();
		lstWrap = new List<Wrapper>();
		for(Schema.SobjectType s : lst){
			objects.add(string.valueOf(s));
			Schema.Describesobjectresult d = s.getDescribe();
			if(string.valueOf(s).contains('__c'))
			lstWrap.add(new wrapper(string.valueOf(s),'Custom Object','green',d.getKeyPrefix()));
			else
			lstWrap.add(new wrapper(string.valueOf(s),'Standard Object','red',d.getKeyPrefix()));
		}
		
	
	
	}
	
	public List<String> objects{get; set;} 
	
	public List<wrapper> lstWrap{get; set;}
	public class wrapper{
		
		public string objName{get; set;}
		public string objType{get; set;}
		public string color{get; set;}
		public string prefix{get; set;}
		
		public 	wrapper(string a, string b, string c, string d){
			objName = a;
			objType = b;
			color=c;
			prefix =d;
		}	
	}
	
}