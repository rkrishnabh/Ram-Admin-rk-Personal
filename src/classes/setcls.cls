public with sharing class setcls {
	
	public static void m1(){
		
		Set<Integer> st = new Set<Integer>();
		st.add(1248);
		st.add(1225);
		st.add(1252);
		st.add(1232);
		st.add(1221);
		
		Set<Integer> st1 = new Set<Integer>{1,2,3,4,5,6};
		
		
		System.debug('Elements>>>>>>>>>>>>>>>'+st);
		System.debug('Elements Count>>>>>>>5>>>>>>>>'+st.size());
		
		System.debug('>>>>>>>>true>>>>>>>>>>>>>>'+st.contains(1232));
		System.debug('>>>>>>>>false>>>>>>>>>>>>>>'+st.contains(1202));
		
		st.remove(1252);
		System.debug('Elements Count after removing>>>>>>>4>>>>>>>>'+st.size());
		
		st.add(1227);//
		st.add(1212);//
		st.add(1213);//
		st.add(1252);//
		st.add(1221);
		
		System.debug('Elements Count after dups>>>>>>>8>>>>>>>>'+st.size());
		
		Set<Integer> st2 = new Set<Integer>();
		st2.addAll(st);
		System.debug('Elements Count after dups set 2>>>>>>>8>>>>>>>>'+st2.size());
		
		Set<Integer> st3 = st.clone();
		System.debug('Elements Count after dups set 2>>>>>>>8>>>>>>>>'+st2.size());System.debug('Elements Count after dups set 3>>>>>>>8>>>>>>>>'+st3.size());
		//Both will clear the data in set
		
		st.clear();
		st = new Set<Integer>();
		
		System.debug('>>>>>>true>>>>>>>>>>'+st.isEmpty());
		System.debug('>>>>>>false>>>>>>>>>>'+st2.isEmpty());
		
		
		List<Integer> lst = new List<Integer>{1,2,3,4,5,6,7,8,9,1,2,5,5,6,9,8,7,5,0,1,2,5,8,5};
		Set<Integer> newst = new Set<Integer>();
		newst.addAll(lst);
		System.debug('>>>>>>10>>>>>>>>'+newst.size());
		//lst = new List<Integer>();
		lst.clear();
		lst.addAll(newst);
		System.debug('>>>>>>10>>>>>>>>'+lst.size());
		
		for(Integer i: st2){
			System.debug('>>>>>>>>>>>>>>>>>>>>>>'+i); 
		} 
		
	}
	
}