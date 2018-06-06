@isTest
private class deleteContactscls_test {

    static testMethod void myUnitTest() {
        // TO DO: implement unit test
        Contact con = new Contact();
        con.lastname='testcon';
        insert con;
        
        Contact con1 = new Contact();
        con1.lastname='testcon1';
        insert con1;
        
        deleteContactsCls obj = new deleteContactsCls();
        obj.lstwrap = new List<contactwrapper>();
        obj.lstwrap.add(new contactwrapper(true, con));
        obj.lstwrap.add(new contactwrapper(false, con1));
        obj.deleteContacts();
        
        
    }
}