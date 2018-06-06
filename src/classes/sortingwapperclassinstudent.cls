public class sortingwapperclassinstudent {
      public List<ctrla51__Student__c> memList {get;set;}
    List<MemberWrapper> memberWrapperList = new List<MemberWrapper>();
    public sortingwapperclassinstudent() {
        memList = new List<ctrla51__Student__c>();
        memList = [SELECT Name, ctrla51__Age__c FROM ctrla51__Student__c];
        
        for(ctrla51__Student__c mem : memList){
            memberWrapperList.add(new MemberWrapper(mem));
        }
        
        memberWrapperList.sort();
        memList.clear();
        
        for(MemberWrapper MW : memberWrapperList){
            memList.add(MW.member);
        }
    }
    
    public class MemberWrapper implements Comparable {

        public ctrla51__Student__c member = new ctrla51__Student__c();
        
        // Constructor
        public MemberWrapper(ctrla51__Student__c memberRecord) {
            member = memberRecord;
        }
        
        // Compare members based on the Member__c Age.
        public Integer compareTo(Object compareTo) {
            // Cast argument to MemberWrapper
            MemberWrapper compareTomember = (MemberWrapper)compareTo;
            system.debug('compareTomember'+compareTomember);
            // The return value of 0 indicates that both elements are equal.
            Integer returnValue = 0;
            if (member.ctrla51__Age__c > compareTomember.member.ctrla51__Age__c) {
                // Set return value to a positive value.
                returnValue = 1;
            } else if (member.ctrla51__Age__c < compareTomember.member.ctrla51__Age__c) {
                // Set return value to a negative value.
                returnValue = -1;
            }
            
            return returnValue;       
        }
    }

}