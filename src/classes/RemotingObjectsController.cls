public with sharing class RemotingObjectsController {

    public Account Account { get; set; }

    


@RemoteAction
    public static void addAccounts(List<Account> accounts){
        insert accounts;
    }
}