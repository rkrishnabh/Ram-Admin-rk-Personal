public class multiplication{
    
    public integer x ;
    public integer y;
    
    public multiplication(integer z){
        
        x = 60;
        y = z/10;
    
    }
    
    
    public void multiply(integer a, integer b){
        
        System.debug('Result of multiplying '+a+' and '+ b+' is '+a*b);
    
    }
    
    
    public void multiply(integer a, integer b, integer c){
        
        System.debug('Result of multiplying '+a+' and '+ b+' and '+c+' is '+a*b*c);
    
    }
        
    public void sub(){
        integer x = 50;
        integer y = 40;
        System.debug(x+y);
    }
}