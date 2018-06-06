<aura:application >
     <aura:attribute name="reqParams" type="Object" description="http params"/>
    <aura:attribute name="accounts" type="Account[]" />
    <aura:handler name="init" value="{!this}" action="{!c.doInit}" />
    
    <!-- Load SFRest component, pass in http params and then handle the response -->
    <c:SFRest params="{!v.reqParams}" response="{!c.handleResponse}"/>
    
    <aura:iteration items="{!v.accounts}" var="account">
        {!account.Name}
        <br/>
    </aura:iteration>
</aura:application>