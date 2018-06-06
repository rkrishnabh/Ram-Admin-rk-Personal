public class sortingwapperstcapcustsett {
       
     //  public List<ctrla51__Student__c> memList {get;set;}
     public List<ctrla51__states_and_capitals__c> code {get;set;}
    List<MemberWrapper> memberWrapperList = new List<MemberWrapper>();
    public sortingwapperstcapcustsett() {
         
        Map<String,ctrla51__states_and_capitals__c> allCodes = ctrla51__states_and_capitals__c.getAll();
        //code = allCodes.values();
        for(ctrla51__states_and_capitals__c c:allCodes.values()){
             memberWrapperList.add(new MemberWrapper(c));
             
        }
             system.debug('----'+memberWrapperList);
         memberWrapperList.sort();
        code =new List<ctrla51__states_and_capitals__c>();
              for(MemberWrapper MW : memberWrapperList){
                 
            code.add(MW.member);
        }
       // system.debug('+++='+code);
          
       
    }
    
    //wrpper class
     public class MemberWrapper implements Comparable {

        public ctrla51__states_and_capitals__c member = new ctrla51__states_and_capitals__c();
        
        // Constructor
        public MemberWrapper(ctrla51__states_and_capitals__c memberRecord) {
            member = memberRecord;
            
        }
        
        // Compare members based on the Member__c Age.
        public Integer compareTo(Object compareTo) {
            // Cast argument to MemberWrapper
            MemberWrapper compareTomember = (MemberWrapper)compareTo;
           system.debug('^^^^^'+compareTomember);
            // The return value of 0 indicates that both elements are equal.
            Integer returnValue = 0;
            if (member.ctrla51__Poplaction__c > compareTomember.member.ctrla51__Poplaction__c) {
                // Set return value to a positive value.
                returnValue = 1;
            } else if (member.ctrla51__Poplaction__c < compareTomember.member.ctrla51__Poplaction__c) {
                // Set return value to a negative value.
                returnValue = -1;
            }
            system.debug('&&&&'+returnValue);
            return returnValue;       
        }
     }
}