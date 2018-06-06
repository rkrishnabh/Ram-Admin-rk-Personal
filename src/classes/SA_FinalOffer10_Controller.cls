public class SA_FinalOffer10_Controller {

    public PageReference initializeValues() {
        return null;
    }


    public String finalOffres { get; set; }
     
     public SA_FinalOffer10_Controller(){
     
     }
     
     public List<Offerwrap> finalOffer;
     
     public List<Offerwrap> getFinalOffer()
     {Offerwrap offr=new Offerwrap();
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
         system.debug('list'+finalOffer.size());
        return finalOffer;
     }
     
     public class Offerwrap {
        public string placementPartner{get; set;}
        public boolean faciallyQualified{get; set;}
        
            
    } 
 }