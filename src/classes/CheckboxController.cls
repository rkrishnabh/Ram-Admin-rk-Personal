public with sharing class CheckboxController {

    public PageReference Check() {
        system.debug('@@selected '+selected );
        return null;
    }


    public String currentEmp { get; set; }

    public String expYears { get; set; }

    public Boolean selected { get; set; }
     public CheckboxController(){
        selected = false;
    }
}