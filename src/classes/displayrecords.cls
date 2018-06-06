public with sharing class displayrecords{
public List<Contact> conList{get;set;}
public displayrecords()
{
conList=new List<Contact>([select AccountId,Fax, Phone,lastname,Id from Contact  ]);
//conList=[select AccountId,Fax, Phone,lastname,Id from Contact  ];
system.debug('000000'+conList);



}


}