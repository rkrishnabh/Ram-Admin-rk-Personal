@isTest
public class addLineItems_test {
	
	
	static testmethod void m1(){
		
		
		AddLineItems obj = new AddLineItems();
		obj.AddAccount();
		obj.rowIndex = 1;
		obj.removeAccount();
		obj.lstwrap = new List<AddLineItems.AccWrapper>();
		Account acc = new Account();
		acc.name='test';
		acc.phone='123445';
		obj.lstwrap.add(new AddLineItems.AccWrapper(0,acc));
		obj.lstwrap.add(new AddLineItems.AccWrapper(1,new Account(name='test1',phone='122134123')));
		obj.saverecords();
	}
	
}