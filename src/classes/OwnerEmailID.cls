public class OwnerEmailID
{
public list<Contact> OEI{get;set;}
public pageReference show()
{
OEI=[SELECT Id, AccountId,contact.account.parent.owner.Email from contact where account.name='BEV CapitalUpdated'];
return null;
}
}