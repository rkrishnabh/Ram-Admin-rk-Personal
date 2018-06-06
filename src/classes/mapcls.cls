public with sharing class mapcls {
	
	public static void m1(){
		//1way
		Map<Integer, String> mp = new Map<Integer, String>();
		mp.put(1248,'Charan');
		mp.put(1227,'Praveen');
		mp.put(1232,'Anand');
		mp.put(1252,'Vinay');
		mp.put(1234,'Ravi');	
	    //2Way
		Map<Integer, String> mp1 = new Map<Integer, String>{1=>'a',2=>'b',3=>'c'};
		
		
		System.debug('Pairs in map are>>>>>>>>>>>>>>'+mp);
		System.debug('Count Pairs in map are>>>>>>5>>>>>>>>'+mp.size());
		
		System.debug('Keys in map are>>>>>>>>>>>>>'+mp.keyset());
		System.debug('Values in map are>>>>>>>>>>>>>'+mp.values());
		
		System.debug('Key 1241 in map>>>>>>>>>false>>>>>>>>>'+mp.containsKey(1241));
		System.debug('Key 1252 in map>>>>>>>>>true>>>>>>>>>'+mp.keyset().contains(1252));
		
		System.debug('value of 1234 is>>>>>>Ravi>>>>>>>>'+mp.get(1234));
		
		mp.remove(1252);
		System.debug('Count Pairs in map are>>>>>>>4>>>>>>>'+mp.size());
		
		mp.put(1211,'Rajesh');//
		mp.put(1206,'Praveen');//
		mp.put(1231,'Praveen');//
		mp.put(1234,'Kiran');
		
		System.debug('Count Pairs in map after dups are>>>>>>>7>>>>>>>'+mp.size());
		System.debug('Vlaue of 1234 is>>>>>>Kiran>>>>>>>'+mp.get(1234));
		
		Map<Integer, String> mp2 = new Map<Integer, String>();
		mp2.putAll(mp);
		
		Map<Integer, String> mp3 = mp.clone();
		
		mp.clear();
		mp = new Map<Integer, String>();
		
		System.debug('>>>>>>>>>>true>>>>>>>>>>>>'+mp.isEmpty());
		
		for(integer i:mp2.keyset()){
			System.debug('>>>>>>>>>key is>>>>>>>>>>>>'+i);
			System.debug('>>>>>>>>>Value is>>>>>>>>>>>>'+mp2.get(i));
		}
		for(string s : mp2.values()){
			System.debug('>>>>>>>>>>>>value is>>>>>>>>>>>>>'+s);
		}
		
	}
	
}