<aura:application access="GLOBAL" extends="force:slds" >
     <!-- <link href='/resource/bootstrap/' rel="stylesheet"/>-->
    <!--link href="{!URLFOR($Resource.bootstrap, 'bootstrap/css/bootstrap-responsive.css')}" rel="stylesheet"/>-->
    <ltng:require styles="/resource/bs/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css}" />
  

    

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand">Lightning Contacts</a>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                 <c:SearchBar />
                <c:ContactList />
            </div>
            <div class="col-sm-8">
            
                <c:ContactDetails />
            </div>
        </div>
    </div>
	
</aura:application>