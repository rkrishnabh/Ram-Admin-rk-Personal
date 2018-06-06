public class serial{
 

public string dis(){
    //public string dis(String Name,integer EngMarks,integer MathsMarks,integer HingiMarks){
    list<serialWrapper> sW=new list<serialWrapper>();
    list<serialWrapper> ssW=new list<serialWrapper>();
	//serialWrapper s=new serialWrapper(Name,EngMarks,MathsMarks,HingiMarks);
    serialWrapper s=new serialWrapper();
s.Name='Ramakrishna';
s.EngMarks=75;
s.MathsMarks=75;
s.MathsMarks=75;
s.HingiMarks=75;
    sw.add(s);
    serialWrapper s1=new serialWrapper();
s1.Name='1Ramakrishna';
s1.EngMarks=175;
s1.MathsMarks=175;
s1.MathsMarks=175;
s1.HingiMarks=175;
sw.add(s1);
    ssw.addAll(sw);
    

system.debug('++++'+JSON.serialize(sw));
    serialWrapper1 s10=new serialWrapper1();
    s10.company='birlasoft';
    s10.turnover=80000;
    s10.values=ssw;
    list<serialWrapper1> ch=new list<serialWrapper1>();
    

    ch.add(s10);
    system.debug('++++'+JSON.serialize(ch));
    
return JSON.serialize(ch);

}

public class serialWrapper{

		public String Name{get;set;}
		public integer EngMarks{get;set;}
		public integer MathsMarks{get;set;}
		public integer HingiMarks{get;set;}
    
    public serialWrapper(){}
    /*
    public serialWrapper(String Name,integer EngMarks,integer MathsMarks,integer HingiMarks){
        this.name=name;
        this.EngMarks=EngMarks;
        this.MathsMarks=MathsMarks;
        this.HingiMarks=HingiMarks;
    }*/

}
    //Child serial wrapper
    public class serialWrapper1{

		public String company{get;set;}
		public integer turnover{get;set;}
		public List<serialWrapper> values{get;set;}

    
    public serialWrapper1(){}
    /*
    public serialWrapper(String Name,integer EngMarks,integer MathsMarks,integer HingiMarks){
        this.name=name;
        this.EngMarks=EngMarks;
        this.MathsMarks=MathsMarks;
        this.HingiMarks=HingiMarks;
    }*/

}

}