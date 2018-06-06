public with sharing class displaystaticrfiledata {
public String textFromSomeUniqueName {
    get {
        StaticResource sr = [
                select Body
                from StaticResource
                where Name = 'ramdoc' limit 1
                ];
        return sr.Body.toString();
    }
}

}