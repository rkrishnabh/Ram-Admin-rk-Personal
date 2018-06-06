@isTest
public class pageblocktable_Test {
   
    @testSetup static void pg() {
        PageReference pageRef1 = Page.pageblocktable;
        Test.setCurrentPageReference(pageRef1);
        

         List<account> acc1=new List<account>();
        for(integer i=0; i<200; i++){
            
            account a=new account(name='test'+i);
            acc1.add(a);
            
        }
        insert acc1;
} 
    static testMethod void pagination()
{
    
     
    
    boolean returnValueBoolean1 = true;
        
    pageblocktable pb=new pageblocktable();
    pb.FirstPage();
    pb.getacclist ();
    pb.previous(); 
    pb.next();
    pb.LastPage ();
    //pb.getnxt  ();
    pb.getprev  ();
    returnValueBoolean1=pb.getprev  ();
       returnValueBoolean1=pb.getnxt  ();
    pb.OffsetSize =0;
    System.assertEquals(0, pb.OffsetSize); 
    //pb.OffsetSize =-1;
    //System.assertEquals(0, pb.OffsetSize);
    
    
    pb.getnxt  ();
    
    
    
    
    
    
    
    
}
    
        

}