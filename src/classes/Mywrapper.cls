public with sharing class Mywrapper {

public class mywrapper1{

public boolean check {get;set;}
public contact con{get;set;}



public mywrapper1(Boolean b,contact c)
{
check=b;
con=c;

}
}
public List<mywrapper1> items {get;set;}
 
 public mywrapper(){
 items =new List<mywrapper1>();
 List<contact> Listcon=[select id,name,email from contact];
 
for(contact c:Listcon){
items.add(new mywrapper1(false,c));
}
}
}