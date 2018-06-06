@isTest
private class Aggregatecls_test {

    static testMethod void myUnitTest() {
		
		Account acc = new Account();
		acc.name='test';
		acc.phone='122341345';
		insert acc;
		
		Case c1 = new Case();
		c1.AccountId = acc.Id;
		c1.Origin='Email';
		insert c1;
		
		Aggregatecls obj = new Aggregatecls();	
	}
}