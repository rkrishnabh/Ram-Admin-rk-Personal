trigger createContactRecord on Contact (before insert) {

list<account> listAcc=[select id,name from account];


system.debug('===='+trigger.old);






account acc=new account();

//if(acc.Rating =='HOt'&& )



}