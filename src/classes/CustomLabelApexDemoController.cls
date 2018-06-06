public class CustomLabelApexDemoController {
    public string customLabelValue{get;set;}
    public CustomLabelApexDemoController()
    {
       customLabelValue = System.Label.Sample_text;
        //customLabelValue = $.Label.Sample_text;
    }
}