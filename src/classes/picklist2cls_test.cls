@isTest
private class picklist2cls_test {

    static testMethod void myUnitTest() {
			
			Account acc = new Account();
			acc.name='test';
			acc.phone='2342134234';
			insert acc;
			
			Account acc1 = new Account();
			acc1.name='test';
			acc1.phone='2342134234';
			insert acc1;
			
			Contact con = new Contact();
			con.LastName='testCon';
			con.AccountId = acc.Id;
			insert con;
			
			picklist2cls obj = new picklist2cls();
			obj.selectedAcc = acc.Id;
			obj.fetch();
			obj.selectedAcc = acc1.Id;
			obj.fetch();
			
    }
}