public with sharing class displaycolumwisedataext {
    public list<account> accs{get;set;}
    public List<RowWrapper> rows{get;set;}
    public displaycolumwisedataext(ApexPages.StandardController controller) {

    }
    // retrieves the list of accounts backing the page
public List<Account> getAccounts()
{    accs=new list<account>();
    if (null==accs)
    {
        accs=[select id, Name, BillingStreet, BillingCity, BillingPostalCode from Account limit 3];
    }
     
    return accs;
}
 
// retrieves the list of row wrappers
public List<RowWrapper> getRowWrappers()
{
    if (null==rows)
    {
        rows=new List<RowWrapper>();
         
        // create a row for each field - there are 4 of these, Name, Street, City and PostCode
        for (Integer idx=0; idx<4; idx++)
        {
            rows.add(new RowWrapper());
        }
         
        // iterate the accounts and populate the rows
        for (Integer idx=0; idx<getAccounts().size(); idx++)
        {
            rows[0].addValue(getAccounts()[idx].Name);
            rows[1].addValue(getAccounts()[idx].BillingStreet);
            rows[2].addValue(getAccounts()[idx].BillingCity);
            rows[3].addValue(getAccounts()[idx].BillingPostalCode);
        }
    }
     
    return rows;
}

}