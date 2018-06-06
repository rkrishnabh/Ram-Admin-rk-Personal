public class myControllerExtension {
    private final Account acct;

    public myControllerExtension(ApexPages.StandardController stdcontroller) {
    this.acct=(Account)stdcontroller.getRecord();

    }
    public String getGreeting() {

        return 'Hello ' + acct.name + ' (' + acct.id + ')';

    }


}