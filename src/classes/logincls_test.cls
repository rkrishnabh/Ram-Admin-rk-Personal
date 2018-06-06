@isTest
private class logincls_test {

    static testMethod void myUnitTest() {
    	
    	Registration__c reg = new Registration__c();
    	reg.Username__c = 'test';
    	reg.Password__c = '12345';
    	insert reg;
    	
		logincls obj = new logincls();
		obj.uname ='test';
		obj.pswd='12345';
		obj.validate();
		obj.uname ='test';
		obj.pswd='123456';
		obj.validate();
		obj.uname='test1';
		obj.pswd='12345';
		obj.validate();
    }
}