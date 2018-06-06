@isTest
private class controllercls_test {

    static testMethod void myUnitTest() {
		
		controllercls obj = new controllercls ();
		obj.accName = 'testAccount';
		obj.accPhone='123412342134';
		obj.saveRecord();
		obj.saveNEwRecord();
		obj.cancel();
    }
}