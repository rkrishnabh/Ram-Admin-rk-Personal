public class listcls {
    
    
    public void m1(){
    	//1 Way
    	List<String> lst = new List<String>();
    	
    	lst.add('ABC');
    	lst.add('DEF');
    	lst.add('GHI');
    	lst.add('JKL');
    	lst.add('1248'); 
    	//2 Way
    	List<Integer> lst1 = new List<Integer>{1,2,3,4,5,6,7,8,9,0};
    	
    	System.debug('>>>>>elements>>>>>>>>>>>>'+lst);
    	System.debug('>>>>>elements Count>>>>>>5>>>>>>'+lst.size());
    	
    	System.debug('>>>>>First Element>>>>>>>>>>>>>'+lst[0]);
    	System.debug('>>>>>JKL>>>>>>>>>>>>>'+lst[3]);
    	System.debug('>>>>>Last Element>>>>>>>>>>>>>'+lst[lst.size()-1]);
    	
    	lst.remove(2);
    	System.debug('>>>>>>>JKL>>>>>>>>'+lst[2]);
    	System.debug('>>>>>elements Count after removing>>>>>>4>>>>>>'+lst.size());
    	
    	lst.add('$123');
    	lst.add('Abc');
    	lst.add('abc');
    	lst.add('GHI');
    	
    	System.debug('>>>>>elements Count after dups>>>>>>>8>>>>>'+lst.size());
    	lst.sort();
    	
    	System.debug('>>>>>First Element after sorting>>>>>>$123>>>>>>>'+lst[0]);
    	System.debug('>>>>>elements after sorting>>>>>>>>>>>>'+lst);
    	
    	List<string> lst2 = new List<String>();
    	lst2.add('*123');
    	lst2.addAll(lst);
    	List<string> lst3 = lst.clone();
    	System.debug('>>>>>elements Count lst2>>>>>>>9>>>>>'+lst2.size());
    	System.debug('>>>>>elements Count lst3>>>>>>>8>>>>>'+lst3.size());
    	
    	lst.clear();
    	System.debug('>>>>>elements Count lst>>>>>>>0>>>>>'+lst.size());
    	
    	System.debug('>>lst>>>>true>>>>>>>>>>'+lst.isEmpty());
    	System.debug('>>lst2>>>>false>>>>>>>>>>'+lst2.isEmpty()); 
    	
    	for(integer i=0;i<lst2.size();i++){
    		System.debug('>>>>>Indexing>>>>>>>>>>'+lst2[i]);
    	}
    	
    	for(String s: lst2){
    		System.debug('>>>>>For Each>>>>>>>>>>>'+s);
    	}
    	
    }
    
}