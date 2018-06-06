public class testkk {
    public PageReference initializeValues() {
        return null;
    }


    public String finalOffres { get; set; }
     
     public testkk(){
     
     }
     
     public List<Offerwrap> finalOffer;
     Offerwrap offr=new Offerwrap();
     public Offerwrap getFinalOffer()
     {
     finalOffer= new List<Offerwrap >();
         
         offr.placementPartner='Amex';
         offr.faciallyQualified=false;
         finalOffer.add(offr);
         offr.placementPartner='Kabbage';
         offr.faciallyQualified=true;
         finalOffer.add(offr);
         offr.placementPartner='Lending Club';
         offr.faciallyQualified=false;
         finalOffer.add(offr);
         offr.placementPartner='OnDeck';
         offr.faciallyQualified=true;
         finalOffer.add(offr);
         system.debug('list'+finalOffer);
        return offr;
     }
     
     public class Offerwrap {
        public string placementPartner{get; set;}
        public boolean faciallyQualified{get; set;}
        
            
    } 


}