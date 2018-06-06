public class oppTriggerHelperClass {
    public static void applyDiscount(list<Opportunity> opp){
        list<Contract> listcontract =new list<Contract>();
Contract con = new contract();

for(opportunity Opt : opp) {

if(Opt.StageName == 'Closed Won' && opt.amount >200000){

con.AccountId= Opt.accountId;

con.ContractTerm =12;
con.StartDate =date.Today();
con.Status = 'Draft';

listcontract.add(con);

system.debug('8888'+opt.owner.name);
}

insert listcontract  ;
       
}


}






public static boolean isUpdate=true;

}