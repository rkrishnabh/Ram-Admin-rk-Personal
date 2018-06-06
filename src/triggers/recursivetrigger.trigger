trigger recursivetrigger on Contact (after update) {
id recordid;
for(contact con:trigger.new){
recordid=con.id;


}
 if(triggecls.isUpdated == false){
    triggecls.isUpdated = true;
contact conrec=[select id,email from contact where id!=:recordid limit 1];
conrec.email='rkbhatraju@gmail.com';
update conrec;
}
}