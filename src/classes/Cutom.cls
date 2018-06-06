public with sharing class Cutom {

    //public List<SelectOption> countriesSelectList { get; set; }

    public String country { get; set; }
    
    public List<SelectOption> getCountriesSelectList() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('', '-- Select One --'));        

        // Find all the countries in the custom setting
        Map<String, ctrla51__states_and_capitals__c> countries = ctrla51__states_and_capitals__c.getAll();
         system.debug('=========='+countries);
        
        // Sort them by name
        List<String> countryNames = new List<String>();
        countryNames.addAll(countries.keySet());
        countryNames.sort();
        
        system.debug('=========='+countryNames);
        
        // Create the Select Options.
        for (String countryName : countryNames) {
            ctrla51__states_and_capitals__c country = countries.get(countryName);
            options.add(new SelectOption(country.ctrla51__Capitals__c, country.Name));
        }
        return options;
    }
    
   
}