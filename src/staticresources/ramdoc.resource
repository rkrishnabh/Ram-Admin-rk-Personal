<apex:page sidebar="false" showHeader="false" StandardController="Idea_Information__c" extensions="IdeaPageController1" id="pageId" action="{!isValidUser}">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/soap/ajax/28.0/connection.js" type="text/javascript"></script>
    <script src="/soap/ajax/28.0/apex.js" type="text/javascript"></script>
    <apex:stylesheet value="{!$Resource.BootstrapFile}"/>
    <apex:stylesheet value="{!$Resource.FontAwesome}"/>
    <apex:stylesheet value="{!$Resource.CustomCss}"/>
    <apex:stylesheet value="{!$Resource.basicCss}"/>
    <apex:stylesheet value="{!$Resource.IdeaPage}"/>
    <apex:stylesheet value="{!URLFOR($Resource.CSCSiteAsset, '/CSCSiteAsset/css/font-awesome.css')}"/>
    <apex:stylesheet value="/sCSS/25.0/sprites/1342034628000/Theme3/default/gc/versioning.css" />
    <apex:stylesheet value="/sCSS/25.0/sprites/1342034628000/Theme3/default/gc/extended.css" />  <style>
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
    margin: auto;
    width: 80%;
    height: 300px !important;
    }
    </style>
    
    <script>
    $j = jQuery.noConflict();
    var newWin=null;
    function myIdeaFun()
    {
        CreateIdeaPage();
    }
    function openPopup3()
    {
        document.getElementById('mymodal').style.display = "none";
    }
    function openPopup() {
        document.getElementById('mymodal').style.display = "block";
    }
    function openPopupSurvey() {
        document.getElementById('mymodal1').style.display = "block";   
    }
    
    function openPopupSurveyResult() {
        document.getElementById('mymodal21').style.display = "block";
    }
    function openPopupClose2(){
        document.getElementById('mymodal21').style.display = "none";    
    } 
    function openPopupComment(id, title) {
        document.getElementById('pageId:form3:pageBlock3:pageBlockSection3:pageBlockSectionItem3:IdeaName').innerHTML= title;
        document.getElementById('pageId:form3:pageBlock3:ideaIds').value= id;
        document.getElementById('mymodal3').style.display = "block";
    }
    
    
    function closemodal(){
        
        var container = document.getElementById("mymodal1");
        var content = container.innerHTML;
        container.innerHTML= content;
        document.getElementById('mymodal1').style.display = "none";
        
    }
    
    
    function openPopupClose1() {
        document.getElementById('mymodal').style.display = "none";
        document.getElementById('mymodal2').style.display = "none";
        document.getElementById('mymodal3').style.display = "none";
        //document.getElementById('mymodal4').style.display = "none";
    }
    function popupClose(){
        document.getElementById('mymodal4').style.display = "none";
    }        
    function openPopup4(title,body){
        passTitleVal(body);
        document.getElementById('pageId:FormId:ideas1:ideaBody').value = body;
        document.getElementById('mymodal4').style.display = "block";
    }
    
    function openPopup41(title,body){
        passTitleVal(body);
        document.getElementById('pageId:FormId:ideas2:ideaBody').value = body;
        document.getElementById('mymodal4').style.display = "block";
    }
    
    function openPopup42(title,body){
        passTitleVal(body);
        document.getElementById('pageId:FormId:ideas3:ideaBody').value = body;
        document.getElementById('mymodal4').style.display = "block";
    }
    
    function LikeDisplay() {
        document.getElementById('EnableLike').style.display = "none";
        document.getElementById('DisableLike').style.display = "";    
    }
    
    function CreateSurveyPage123() {
        
        var surveyName = document.getElementById('pageId:form2:surveyPageRend:surveyPageSect:surveyName').value;
        var Year = document.getElementById('pageId:form2:surveyPageRend:surveyPageSect:Year').value;
        var month = document.getElementById('pageId:form2:surveyPageRend:surveyPageSect:month').value;
        var week = document.getElementById('pageId:form2:surveyPageRend:surveyPageSect:week').value;
        var Question = document.getElementById('pageId:form2:surveyPageRend:quest:qQuestion').value;
        var Answer1 = document.getElementById('pageId:form2:surveyPageRend:quest:qQuestion1').value;
        var Answer2 = document.getElementById('pageId:form2:surveyPageRend:quest:qQuestion2').value;
        var Answer3 = document.getElementById('pageId:form2:surveyPageRend:quest:qQuestion3').value;
        
        if(surveyName == '') {
            alert('Survey Name Shouldn\'t be blank.Please enter correct survey name');
        }
        else if(Year == 'None') {
            
            alert('Year Shouldn\'t be blank.Please select appropriate Year');
        }
            else if(month == 'None') {
                alert('Month shouldn\'t be blank.Please select appropriate Month');
            }
                else if(week == 'None') {
                    alert('Week shouldn\'t be blank.Please select appropriate Week'); 
                }
                    else if(Question == '') {
                        alert('Question shouldn\'t be blank.Please select appropriate Question');
                    }
                        else if(Question.length < 10) {
                            alert('please enter at least 10 characters');
                        }
                            else if(Answer1 == '') {
                                alert('Answer1 shouldn\'t be blank.Please select appropriate Answer1');
                            }
                                else if(Answer1.length < 2) {
                                    alert('please enter at least 2 characters');
                                }
                                    else if(Answer2 == '') {
                                        alert('Answer2 shouldn\'t be blank.Please select appropriate Answer2');
                                    }
                                        else if(Answer2.length < 2) {
                                            alert('please enter at least 2 characters');
                                        }
                                            else if(Answer3 == '') {
                                                alert('Answer3 shouldn\'t be blank.Please select appropriate Answer3');
                                                
                                            }
                                                else if(Answer3.length < 2) {
                                                    alert('please enter at least 2 characters');
                                                    return null;
                                                }
        
        if(surveyName != ''  && Question != '' && Answer1 != '' && Answer2 != '' && Answer3 != ''){ 
            CreateSurveyPage1();   
         } 
    }   
    </script>
    
    <script type="text/javascript">
    function showDetails(){
        var divelement = document.getElementById('myid');
        if(divelement.style.display == 'block')
            divelement.style.display = 'none';    
        else
            divelement.style.display = 'block';
        
        </script>
    
    <apex:form id="FormId" style="height:100%;">
        <apex:actionFunction id="myfunction1" name="myfunction1" action="{!submitAnswer}"/>
        <apex:actionFunction action="{!passTitleValues}" name="passTitleVal" reRender="mymodal4,IdeaPageRend4">
            <apex:param id="aName" name="aName" value="" assignTo="{!ideaWerId}"/>
        </apex:actionFunction>
        
        <div id="wrapper" style="background-color:LightGrey;height:100%;">
            <!-- Top bar -->
            <nav class="navbar navbar-default navbar-cls-top" role="navigation" style="margin-bottom:0;background-color:#66b3ff;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <apex:outputLink value="{!URLFOR($Page.Home_Page, null, [session=sessionId])}" styleClass="navbar-brand" style="background-color:#66b3ff;">
                            <apex:image id="CscImage" value="{!$Resource.cscLogo}" width="120" height="80" styleClass="" style="margin-top:-25px;margin-left:+55px"/>      
                        </apex:outputLink>
                    </div>  
                    <ul class="nav navbar-nav navbar-center" style=" margin-left:300px;margin-top:20px;">
                        <li><h1 style="padding-top:0px;">SFDC Practice Portal</h1></li>   
                    </ul>  
                    
                    <ul class="nav navbar-nav navbar-right" style="margin-top:20px; margin-right:20px;">
                        <li><apex:commandButton styleClass="btn btn-primary" style="background-color:#002266;"  value="Logout" title="Logout" action="{!Logout}"/></li>
                    </ul>
                </div>
            </nav>
            <!-- Top Bar -->
            
            <!-- Side Bar -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div" style="background-color:#002266;margin-bottom:-30px;">
                                <div class="inner-text" style="text-align:center;vertical-align:middle;">
                                    {!Name}<br/>
                                    {!UserAccount}
                                </div>
                            </div>
                        </li>
                        <!-- commented to remove Home page Link 18th Jan 2017-->
                        <!--
                        <li>
                            <apex:outputLink value="{!URLFOR($Page.Home_Page, null, [session=sessionId])}"  style="background-color:LightGrey;color:black;font-weight:bold;"><i class="fa fa-home"/>Home</apex:outputLink>
                        </li>
                        -->
                        <li>
                            <apex:outputLink value="{!URLFOR($Page.CscAccountsData, null, [session=sessionId])}"  style="background-color:LightGrey;color:black;font-weight:bold;"><i class="fa fa-cog"/>Accounts and Projects</apex:outputLink>
                        </li>
                        <li>
                            <apex:outputLink value="{!URLFOR($Page.IdeasSurveyHomePage, null, [session=sessionId])}" style="background-color:LightGrey;color:black;font-weight:bold;"><i class="fa fa-anchor"/>Ideas</apex:outputLink>
                        </li>
                        <li>
                            <apex:outputLink value="{!URLFOR($Page.CertificationsPage, null, [session=sessionId])}"  style="background-color:LightGrey;color:black;font-weight:bold;"><i class="fa fa-adjust"/>Certifications</apex:outputLink>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- Side bar -->
            
            <div id="page-wrapper" style="min-height:600px;background: #e6f2ff;">
                <div id="page-innerr" style="background-color:white;height:600px;">
                    <div style="width:90%;height:0px">
                        <div class="content" style="height:100%;width:73%;background-color:white;float:left">
                            <!--R <div><a href="www.csc.com"><img src="{!URLFOR($Resource.CSCSiteAsset, '/CSCSiteAsset/img/shareyouridea.jpg')}" alt="CSC Home Page" style="height:230px;width:105%;"/></a></div>-->
                            <apex:tabPanel switchType="server" selectedTab="tabdetails" id="test13">
                                <apex:tab label="Recent Ideas" id="tabdetails">
                                    <div align="center">
                                        <input type="button" value="Post Idea" onclick="openPopup();"/>
                                    </div>
                                    <div style="overflow-y:auto;width:100%;height:595px;layout:block;overflow-x: hidden;">
                                        <apex:outputPanel >
                                            <div>
                                                <apex:pageBlock id="ideas1">
                                                    <apex:repeat value="{!data}" var="string" id="theRepeat">
                                                        <apex:pageBlockSection id="ideaRepeat">
                                                            <apex:outputPanel id="RefLike" layout="block" style="overflow:auto;width:260%;height:100px;word-break: break-word;border: 1px solid #e7e5e8;padding: 15px 15px 15px 27px;border-radius: 5px;background-color: #e7e5e8;">
                                                                <table>
                                                                    <tr>
                                                                        <td></td>
                                                                        <!-- td style="width:74px"><apex:image value="{!string.CreatorSmallPhotoUrl}"/></td -->
                                                                        <td style="width:870px;overflow-x: hidden">
                                                                            <a href="#" onclick="openPopup4('{!string.Title__c}','{!string.Id}')">{!string.title__c}</a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr></tr>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td style="float: right;">
                                                                            <apex:outputPanel rendered="{!likeCountRend}">
                                                                           <apex:commandLink value="Like" style="font-size:14px" action="{!likeIdea}" rendered="{!likeCountRend}" reRender="likeIdsCount">
                                                                                <apex:param id="likeCounts" name="likeCounts" value="{!string.Id}"/>
                                                                            </apex:commandLink>&nbsp;
                                                                            <apex:outputText value="{!Floor(String.Like_Count_Total__c)}" rendered="{!likeCountRend}" id="likeIdsCount"></apex:outputText>
                                                                            &nbsp;&nbsp;&nbsp;
                                                                            </apex:outputPanel>
                                                                            <a href="#" onclick="openPopupComment('{!string.id}','{!string.title__c}')" >Comment</a>&nbsp;
                                                                            <apex:outputText value="{!Floor(string.NumComments__c)}" id="countComment"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </apex:outputPanel>
                                                        </apex:pageBlockSection>
                                                    </apex:repeat>
                                                    <apex:inputHidden value="{!ideaWerId}" id="ideaBody"/>
                                                </apex:pageBlock>
                                            </div>
                                        </apex:outputPanel>
                                        <apex:panelGrid columns="7">
                                            <apex:commandButton status="fetchStatus" reRender="test13" value="|<" action="{!setCon.first}" disabled="{!!setCon.hasPrevious}" title="First Page"/>
                                            <apex:commandButton status="fetchStatus" reRender="test13" value="<" action="{!setCon.previous}" disabled="{!!setCon.hasPrevious}" title="Previous Page"/>Previous Next
                                            <apex:commandButton status="fetchStatus" reRender="test13" value=">" action="{!setCon.next}" disabled="{!!setCon.hasNext}" title="Next Page"/>
                                            <apex:commandButton status="fetchStatus" reRender="test13" value=">|" action="{!setCon.last}" disabled="{!!setCon.hasNext}" title="Last Page"/>
                                            <apex:outputText id="refresh">{!(setCon.pageNumber * size)+1-size}-{!IF((setCon.pageNumber * size)>noOfRecords, noOfRecords,(setCon.pageNumber * size))} of {!noOfRecords}</apex:outputText>
                                            <apex:outputPanel style="color:#4AA02C;font-weight:bold">
                                                <apex:actionStatus id="fetchStatus" startText="Fetching..." stopText=""/>
                                            </apex:outputPanel>
                                        </apex:panelGrid>
                                    </div>
                                </apex:tab>
                                <apex:tab label="Popular Ideas" id="tabContact">
                                    <div align="center">
                                        <input type="button" value="Post Idea" onclick="openPopup();"/>
                                    </div>
                                    <div style="overflow-y:auto;width:100%;height:595px;layout:block;overflow-x: hidden;">
                                        <apex:outputPanel >
                                            <div>
                                                <apex:pageBlock id="ideas2">
                                                    <apex:repeat value="{!populardata}" var="stringPop" id="theRepeat2">
                                                        <apex:pageBlockSection id="ideaRepeat">
                                                            <apex:outputPanel id="liketest" layout="block" style="overflow:auto;width:260%;height:100px;word-break: break-word;border: 1px solid #e7e5e8;padding: 15px 15px 15px 27px;border-radius: 5px;background-color: #e7e5e8;" >
                                                                <table>
                                                                    <tr>
                                                                        <td></td>
                                                                        <!-- td style="width:74px"><apex:image value="{!stringPop.CreatorSmallPhotoUrl}"/></td -->
                                                                        <td style="width:870px;overflow-x: hidden">
                                                                            <a href="#" onclick="openPopup41('{!stringPop.Title__c}','{!stringPop.Id}')">{!stringPop.title__c}</a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td style="float: right;">
                                                                            <apex:commandLink value="Like" style="font-size:14px" action="{!likeIdea}" rendered="{!likeCountRend}" oncomplete="window.location.reload(true);" reRender="likeIdsCount">
                                                                                <apex:param id="likeCounts" name="likeCounts" value="{!stringPop.Id}"/>
                                                                            </apex:commandLink>&nbsp;
                                                                                <apex:outputText value="{!Floor(stringPop.Like_Count_Total__c)}" rendered="{!likeCountRend}" id="likeIdsCount"></apex:outputText>
                                                                            &nbsp;&nbsp;&nbsp;
                                                                            <a href="#" onclick="openPopupComment('{!stringPop.id}','{!stringPop.title__c}')" >Comment</a>&nbsp;
                                                                            <apex:outputText value="{!Floor(stringPop.NumComments__c)}" id="countComment"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </apex:outputPanel>
                                                        </apex:pageBlockSection>
                                                    </apex:repeat>
                                                    <apex:inputHidden value="{!ideaWerId}" id="ideaBody"/>
                                                </apex:pageBlock>
                                            </div>
                                        </apex:outputPanel>
                                        <apex:panelGrid columns="7">
                                            <apex:commandButton status="fetchStatus2" reRender="test13" value="|<" action="{!setpopularIdeas.first}"  disabled="{!!setpopularIdeas.hasPrevious}" title="First Page"/>
                                            <apex:commandButton status="fetchStatus2" reRender="test13" value="<" action="{!setpopularIdeas.previous}" disabled="{!!setpopularIdeas.hasPrevious}" title="Previous Page"/>Previous Next
                                            <apex:commandButton status="fetchStatus2" reRender="test13" value=">" action="{!setpopularIdeas.next}" disabled="{!!setpopularIdeas.hasNext}" title="Next Page"/>
                                            <apex:commandButton status="fetchStatus2" reRender="test13" value=">|" action="{!setpopularIdeas.last}" disabled="{!!setpopularIdeas.hasNext}" title="Last Page"/>
                                            <apex:outputText id="refresh2">{!(setpopularIdeas.pageNumber * size)+1-size}-{!IF((setpopularIdeas.pageNumber * size)>noOfRecords, noOfRecords,(setpopularIdeas.pageNumber * size))} of {!noOfRecords}</apex:outputText>
                                            <apex:outputPanel style="color:#4AA02C;font-weight:bold">
                                                <apex:actionStatus id="fetchStatus2" startText="Fetching..." stopText=""/>
                                            </apex:outputPanel>
                                        </apex:panelGrid>
                                    </div>
                                </apex:tab>
                                <apex:tab label="Top All Time" id="allTime">
                                    <div align="center">
                                        <input type="button" value="Post Idea" onclick="openPopup();"/>
                                    </div>
                                    <div style="overflow-y:auto;width:100%;height:595px;layout:block;overflow-x: hidden;">
                                        <apex:outputPanel >
                                            <div>
                                                <apex:pageBlock id="ideas3">
                                                    <apex:repeat value="{!Topdata}" var="stringPop" id="theRepeat3">
                                                        <apex:pageBlockSection id="ideaRepeat">
                                                            <apex:outputPanel layout="block" style="overflow:auto;width:260%;height:100px;word-break: break-word;border: 1px solid #e7e5e8;padding: 15px 15px 15px 27px;border-radius: 5px;background-color: #e7e5e8;" >
                                                                <table>
                                                                    <tr>
                                                                        <td></td>
                                                                        <!-- td style="width:74px"><apex:image value="{!string.CreatorSmallPhotoUrl}"/></td -->
                                                                        <td style="width:870px;overflow-x: hidden">
                                                                            <a href="#" onclick="openPopup42('{!stringPop.Title__c}','{!stringPop.Id}')">{!stringPop.title__c}</a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td style="float: right;">
                                                                            <apex:commandLink value="Like" style="font-size:14px" action="{!likeIdea}" rendered="{!likeCountRend}" oncomplete="window.location.reload(true);" reRender="likeIdsCount">
                                                                                <apex:param id="likeCounts" name="likeCounts" value="{!stringPop.Id}"/>
                                                                            </apex:commandLink>&nbsp;
                                                                            <apex:outputText value="{!Floor(stringPop.Like_Count_Total__c)}" rendered="{!likeCountRend}" id="likeIdsCount"></apex:outputText>
                                                                            &nbsp;&nbsp;&nbsp;
                                                                            <a href="#" onclick="openPopupComment('{!stringPop.id}','{!stringPop.title__c}')" >Comment</a>&nbsp;
                                                                            <apex:outputText value="{!Floor(stringPop.NumComments__c)}" id="countComment"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </apex:outputPanel>
                                                        </apex:pageBlockSection>
                                                    </apex:repeat>
                                                    <apex:inputHidden value="{!ideaWerId}" id="ideaBody"/>
                                                </apex:pageBlock>
                                            </div>
                                        </apex:outputPanel>
                                          <apex:panelGrid columns="7">
                                            <apex:commandButton status="fetchStatus3" reRender="test13" value="|<" action="{!setpopularIdeas.first}" disabled="{!!setpopularIdeas.hasPrevious}" title="First Page"/>
                                            <apex:commandButton status="fetchStatus3" reRender="test13" value="<" action="{!setpopularIdeas.previous}" disabled="{!!setpopularIdeas.hasPrevious}" title="Previous Page"/>Previous Next
                                            <apex:commandButton status="fetchStatus3" reRender="test13" value=">" action="{!setpopularIdeas.next}" disabled="{!!setpopularIdeas.hasNext}" title="Next Page"/>
                                            <apex:commandButton status="fetchStatus3" reRender="test13" value=">|" action="{!setpopularIdeas.last}" disabled="{!!setpopularIdeas.hasNext}" title="Last Page"/>
                                            <apex:outputText id="refresh3">{!(setpopularIdeas.pageNumber * size)+1-size}-{!IF((setpopularIdeas.pageNumber * size)>noOfRecords, noOfRecords,(setpopularIdeas.pageNumber * size))} of {!noOfRecords}</apex:outputText>
                                            <apex:outputPanel style="color:#4AA02C;font-weight:bold">
                                                <apex:actionStatus id="fetchStatus3" startText="Fetching..." stopText=""/>
                                            </apex:outputPanel>
                                        </apex:panelGrid>
                                    </div>
                                </apex:tab>
                                <apex:tab label="Survey Results" id="surveyTime">
                                    <div style="width:auto;font-size: 13px;height:100%;" >
                                        <div style="width:50%;float:right;height:450px;overflow-y: scroll;">
                                            <apex:pageBlock >
                                                <h style="color:black;font-size:18px;font-weight:bold;">Selected Results</h><br/><br/>
                                                <apex:outputlabel for="Year" style="font-weight:lighter;">Select Year:</apex:outputlabel>
                                                <apex:selectList size="1" value="{!selectedYear}" style="width:150px;background-color: white;margin-left:17px" id="Year">
                                                    <apex:selectOptions value="{!optionsYear}"/>
                                                </apex:selectList><br/>
                                                <apex:outputlabel for="month" style="font-weight:lighter;">Select Month:</apex:outputlabel>
                                                <apex:selectList size="1" value="{!selectedMonth}" style="width:150px;background-color: white;margin-left:5px" id="month">
                                                    <apex:selectOptions value="{!optionsMonths}"/>
                                                    <apex:actionSupport action="{!surveyChartRes}" event="onchange" reRender="ques"/>
                                                </apex:selectList><br/><br/>
                                                
                                                <!----------------------------->
                                                <apex:pageBlockSection columns="1" id="ques">
                                                    
                                                    <apex:outputText value="{!QuestionPieChart1}"   style="word-break: break-word;"/>
                                                    <apex:chart height="220" width="300" data="{!pieData3}" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"> 
                                                        <apex:pieSeries dataField="data" labelField="name" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"/> 
                                                        <apex:legend position="right" />
                                                    </apex:chart>
                                                    
                                                    
                                                    <apex:outputText value="{!QuestionPieChart2}"  style="word-break: break-word;"/>
                                                    <apex:chart height="220" width="300" data="{!pieData4}" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"> 
                                                        <apex:pieSeries dataField="data" labelField="name" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"/> 
                                                        <apex:legend position="right" />
                                                    </apex:chart>
                                                    
                                                    
                                                    <apex:outputText value="{!QuestionPieChart3}"  style="word-break: break-word;"/>
                                                    <apex:chart height="220" width="300" data="{!pieData5}" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"> 
                                                        <apex:pieSeries dataField="data" labelField="name" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"/> 
                                                        <apex:legend position="right" />
                                                    </apex:chart>
                                                    
                                                    <apex:outputText value="{!QuestionPieChart4}"  style="word-break: break-word;"/>
                                                    <apex:chart height="220" width="300" data="{!pieData6}" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"> 
                                                        <apex:pieSeries dataField="data" labelField="name" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"/> 
                                                        <apex:legend position="right" />
                                                    </apex:chart>
                                                    
                                                    <apex:outputText value="{!QuestionPieChart5}"   style="word-break: break-word;"/>
                                                    <apex:chart height="220" width="300" data="{!pieData7}" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"> 
                                                        <apex:pieSeries dataField="data" labelField="name" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"/> 
                                                        <apex:legend position="right" />
                                                    </apex:chart>
                                                    
                                                </apex:pageBlockSection>
                                                
                                            </apex:pageBlock>  
                                        </div>
                                        <div style="width:50%;float:right;height:100%;size: inherit;">
                                            <apex:pageBlock >
                                                <h style="color:black;font-size:18px;font-weight:bold;">Current Result</h><br/><br/>
                                                <!--  <button id = "details"  data-toggle="collapse" style="text-align:right;">Details</button> -->
                                                
                                                <apex:pageBlockSection columns="1">
                                                    <label style="color:black;font-size:15px;font-weight:500">Question:</label>
                                                    <a style="color:red;font-size:15px;font-weight:lighter;" onclick="openPopupSurveyResult();">{!QuestionPieChart}</a>
                                                    
                                                </apex:pageBlockSection>
                                                <apex:pageBlockSection >
                                                    <apex:chart height="220" width="300" data="{!pieData}" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"> 
                                                        <apex:pieSeries dataField="data" labelField="name" colorSet="#156F9E,#FF9123,#6BAE4A,#424242,#A4A4A4"/> 
                                                        <apex:legend position="right" />
                                                    </apex:chart>
                                                </apex:pageBlockSection>
                                            </apex:pageBlock>
                                        </div>
                                    </div>
                                </apex:tab>                          
                            </apex:tabPanel>
                        </div>
                    </div>
                    
                    <form id="testid"> 
                        
                        <div class="content" style="background-color:#87CEFA;width:32%;height:auto;float:right">
                            <div><img src="{!URLFOR($Resource.CSCSiteAsset, '/CSCSiteAsset/img/ideaPage.png')}" alt="Login Page" style="width:100%;height:192px;"/>
                            </div>
                            
                            <!--Changed the background color to white Discussion:11-23-2016 border:1px solid#e0e0eb;border-radius:7px; -->
                            <apex:outputPanel id="surveyPanel">
                                <apex:outputPanel rendered="{!!surveyAnswered}">
                                
                                <div style="border:1px solid#e0e0eb;border-radius:7px; width:100%;height:auto;float:right;overflow-y: scroll;overflow-x: hidden;" id="thankYou">
                                    
                                    <apex:repeat value="{!surveyQA}" var="sur" id="selectVals">
                                        <apex:outputLabel style="font-weight: 800;padding-left: 48px;" for="sQues">Survey Question</apex:outputLabel><br/>
                                        <apex:outputText value="{!sur.Question__c}" style="padding-left: 5px;font-weight: 800;WORD-BREAK: break-word;" id="sQues"></apex:outputText>
                                        <br/><br/> 
                                        <apex:selectRadio value="{!surAns}" layout="pageDirection" style="padding-left: 5px;font-style: italic;WORD-BREAK: break-word;margin-left:4px">
                                            <apex:selectOptions value="{!surAnswers}" ></apex:selectOptions>
                                        </apex:selectRadio>
                                    </apex:repeat>                         
                                    <apex:commandButton reRender="surveyPanel,msg,alreadySubmitted,thankYouPanel" action="{!submitAnswer}" value="Submit Your Survey" Style="width: 100%;HEIGHT:20%;background-color: #72afba;border-radius: 5px;font-weight:bolder" id="hideshow" />
                                    <apex:pageMessages id="msg"></apex:pageMessages>
                                    
                                </div>
                                </apex:outputPanel>
                                
                            </apex:outputPanel>
                            <apex:outputPanel id="thankYouPanel" >
                                <apex:outputPanel rendered="{!surveyAnswered}" >
                                    <apex:pageMessage summary="Thank You For Your Feedback" severity="confirm" strength="3"/>
                            </apex:outputPanel>
                            <apex:outputPanel id="alreadySubmitted" >
                                <apex:outputPanel rendered="{!surveyAnswered}" >
                                    <apex:pageMessage summary="already" severity="warning" strength="3" rendered="alreadySubmitted"/>
                            </apex:outputPanel>
                             </apex:outputPanel>   
                            </apex:outputPanel>
                            
                            
                            <div style="width:100%;height:30px;float:right;background-color:white;">
                            </div>
                            
                            
                            <div style="width:100%;height:auto;float:right">
                                <apex:outputLabel style="font-weight: 800;padding-left: 20px; padding-top: 10px; font-size:medium" for="sQues">To create a survey please</apex:outputLabel><br/>
                                <a style="color:red;font-size:21px;font-weight:bolder;padding-left: 78px;" onclick="openPopupSurvey();">
                                
                                    <apex:image id="Click" value="{!$Resource.Click}" width="80" height="50" style="align:center"/></a> 
                            </div>    
                        </div> </form>
                </div>
            </div>
        </div>
        <div id="mymodal4" class="modal4">
            <div id="modal_content4" class="modal-content4">  
                <apex:pageBlock title="Idea Details" id="IdeaPageRend4">
                        <apex:pageBlockSection title="Idea Detail Page" columns="1">
                            <apex:outputText value="{!DisplayTitle}" id="DisTitle" label="Title" style="WORD-BREAK: break-word;"/>
                            <apex:outputText value="{!DisplayDescription}" id="DisDesc" label="Description" style="WORD-BREAK: break-word;"/>
                            
                        </apex:pageBlockSection>
                        <apex:pageBlockSection title="Related Comments" columns="1" >
                            <apex:repeat value="{!displayIdeaComments}" var="val">
                                <apex:outputField value="{!val.Description__c}" style="width:100%;WORD-BREAK: break-word;" label="Comments"  /><br/>  
                            </apex:repeat>
                        </apex:pageBlockSection>
                        <div style="color:black;width:20%">
                            <apex:pageBlockButtons style="color:black">
                                <apex:commandButton onclick="popupClose();" Value="Close"/>
                                <apex:commandButton onclick="popupEdit();" Value="Edit"/>
                                <apex:commandButton onclick="popupSave();" Value="Save"/>
                                
                           </apex:pageBlockButtons> 
                            apex:commandLink value="Edit" action="{!URLFOR($Action.Idea_Information__c.Edit,a.id)}" style="color:#58D3F7;">
                                &nbsp; <font style="width:3px;color:#FE2E2E;">|</font> &nbsp;
                                </apex:commandLink>
                        </div>
                </apex:pageBlock>
            </div>
        </div>
    </apex:form>
    <apex:form >
        <apex:actionFunction action="{!SaveController}" id="CreateIdeaPage" name="CreateIdeaPage"/>
        <div id="mymodal" class="modal">
            <div id="modal_content" class="modal-content" style="width:55%; height:1%;">
                <apex:actionRegion id="postIdeaRegion">
                    <apex:pageBlock title="Create New Idea" id="IdeaPageRend">
                        <apex:pageBlockSection columns="1">
                            <apex:pageBlockSectionItem >
                                <apex:outputLabel value="Title" for="ProName"/>
                                <apex:inputText value="{!Idea_Information__c.Title__c}" id="ProName" style="width:100%;WORD-BREAK: break-word;"/>
                            </apex:pageBlockSectionItem>
                            <apex:pageBlockSectionItem >
                                <apex:outputLabel value="Description" for="ProDescr"/>
                                <apex:inputField value="{!Idea_Information__c.Description__c}" id="ProDescr" style="width:100%;WORD-BREAK: break-word;" />
                            </apex:pageBlockSectionItem>
                        </apex:pageBlockSection>
                        <input type="button" value="Save" onClick="CreateIdeaPage();"/>
                        <input type="button" value="Close" onClick="openPopupClose1();"/>
                        
                    </apex:pageBlock>
                </apex:actionRegion>
            </div>
        </div>
    </apex:form> 
    <apex:form id="form2">
        <apex:actionFunction action="{!showSurveyProject}" name="CreateSurveyPage1" id="CreateSurveyPage1"/>
        <apex:actionFunction action="{!actionSupport}" name="weekCountVal" id="weekCountVal" oncomplete="weekCount()"/>
        <div id="mymodal1" class="modal1">
            <div id="modal_content1" class="modal-content1" style="width:65%; height:40%;">
                <apex:actionRegion id="postIdeaSurvey">
                    <apex:pageBlock id="surveyPageRend">
                        <apex:pageBlockSection title="Create New Survey" columns="2" id="surveyPageSect">
                            <apex:outputLabel for="surveyName">Survey Name:</apex:outputLabel>
                            <apex:inputText value="{!SurveyName}" id="surveyName"><label style="color:red;font-size: 18px;">|</label></apex:inputText>
                            <apex:outputlabel for="Year">Select Year:</apex:outputlabel>
                            <apex:selectList size="1" value="{!selectedYear}" style="width:150px;background-color: white" id="Year">
                                <apex:selectOptions value="{!optionsYear1}"><label style="color:red;font-size: 18px;">|</label></apex:selectOptions>
                                <apex:actionSupport action="{!monthListOptions}" event="onchange" rerender="Hii"/>
                            </apex:selectList>
                            
                            <apex:outputlabel for="month">Select Month:</apex:outputlabel>
                            <apex:outputPanel id="Hii">
                                <apex:selectList size="1" value="{!selectedMonth}" style="width:150px;background-color: white" id="month">
                                    <apex:selectOptions value="{!monthsList}" ><label style="color:red;font-size: 18px;">|</label></apex:selectOptions>
                                    <apex:actionSupport action="{!weekslistoptions}" event="onchange" reRender="Hi"></apex:actionSupport>
                                </apex:selectList>
                            </apex:outputPanel>
                            
                            <apex:outputlabel for="week">Avaliable weeks to display survey on page:</apex:outputlabel>
                            <apex:outputPanel id="Hi">
                                <apex:selectList size="1" value="{!selectedWeek}" style="width:150px;background-color: white" id="week">
                                    <apex:selectOptions value="{!WeeksList}" id="weekDisplay"><label style="color:red;font-size: 18px;">|</label></apex:selectOptions>
                                </apex:selectList>
                             <!--   <apex:inputHidden id="dateValue" value="{!SelectedDateRange}"/>-->
                            </apex:outputPanel>
                        </apex:pageBlockSection>
                        <apex:pageBlockSection title="Add Question" id="quest">
                            <apex:outputLabel style="align:center" for="qQuestion">Question:</apex:outputLabel>
                            <apex:inputTextArea cols="30" rows="3" id="qQuestion" value="{!Question}"><label style="color:red;font-size: 18px;vertical-align: top;">|</label></apex:inputTextArea>
                            <apex:outputLabel for="qQuestion1">Answer1:</apex:outputLabel>
                            <apex:inputText id="qQuestion1" value="{!Answer1}" style="width:233px"><label style="color:red;font-size: 18px;">|</label></apex:inputText>
                            <apex:outputLabel for="qQuestion2">Answer2:</apex:outputLabel>
                            <apex:inputText id="qQuestion2" value="{!Answer2}" style="width:233px"><label style="color:red;font-size: 18px;">|</label></apex:inputText>
                            <apex:outputLabel for="qQuestion3">Answer3:</apex:outputLabel>
                            <apex:inputText id="qQuestion3" value="{!Answer3}" style="width:233px"><label style="color:red;font-size: 18px;">|</label></apex:inputText>
                        </apex:pageBlockSection>
                            <apex:commandButton id="btn" value="Save" onclick="CreateSurveyPage123();" reRender="qQuestion"/>
                            <apex:commandButton id="btn1" value="Close" onclick="closemodal();"/>
                        <!--input type="button" value="Save" onclick="CreateSurveyPage123();" id="btn"/>
                        <input type="button" value="Close" onClick="closemodal();" id="btn1"/-->
                        <br/>
                    </apex:pageBlock>
                </apex:actionRegion>
            </div>
        </div>
    </apex:form>
    <!-- OpenPopupSurveyResult() Mymodal21 START-->
    <apex:form >
        <apex:actionFunction action="{!openPopupSurveyResult}" id="OpenPopupSurvey" name="showdetails"/>
        <div id="mymodal21" class="modal1">
            <div id="modal_content1" class="modal-content1" style="width:50%;">
                <apex:actionRegion id="surveyQARegion">
                    <apex:pageBlock >
                        <apex:pageBlockSection title="Details" id="del" columns="1">                       
                            <apex:outputText value="{!QuestionPieChart6}" style="WORD-BREAK: break-word;" label="Question"/>                        
                            <apex:outputText value="{!answers1}" style="WORD-BREAK: break-word;" label="Answer1"/>                             
                            <apex:outputText value="{!answers2}" style="WORD-BREAK: break-word;" label="Answer2"/>            
                            <apex:outputText value="{!answers3}" style="WORD-BREAK: break-word;" label="Answer3"/>                
                        </apex:pageBlockSection> 
                        <input type="button" value="Close" onClick="openPopupClose2(); "/>
                    </apex:pageBlock>
                </apex:actionRegion>
            </div>
        </div>
    </apex:form> 
    <!-- OpenPopupSurveyResult Mymodal21 END-->
    <apex:form id="form3">
        <div id="mymodal3" class="modal3">
            <div id="modal_content3" class="modal-content3" style="word-break: break-word;">
                <apex:pageBlock title="Add Comment" id="pageBlock3">
                    <apex:pageBlockButtons >
                        <apex:commandButton value="Save" action="{!commentController}"  oncomplete="window.location.reload(true);"/>
                        <apex:commandButton value="Close" onclick="openPopupClose1(); "/>
                    </apex:pageBlockButtons>
                    <apex:inputHidden id="ideaIds" value="{!titleIdea}"/>                         
                    <apex:pageBlockSection columns="1" id="pageBlockSection3">
                        <apex:pageBlockSectionItem id="pageBlockSectionItem3">
                            <apex:outputLabel value="Idea" for="IdeaName" id="idea3"/>
                            <apex:OutputText value="{!Title1}" id="IdeaName" style="width:100%;WORD-BREAK: break-word;"/>
                        </apex:pageBlockSectionItem>
                        <apex:pageBlockSectionItem id="pageBlockSectionItem31">
                            <apex:outputLabel value="Description" for="ProComment"/>
                            <apex:inputTextArea value="{!BodyIdea}" id="ProComment" style="width:100%"/>
                        </apex:pageBlockSectionItem>
                    </apex:pageBlockSection>
                </apex:pageBlock>     
            </div>
        </div>
    </apex:form>
</apex:page>
////
public with sharing class IdeaPageController1 {
    
    Public Idea_Information__c ideaPage {get;set;}
    public String ProjectId { get; set; }
    public String TitleIdea { get; set; }
    public String Title1 { get; set; }
    public String BodyIdea { get; set; }
    public String ProjectName { get; set; }
    Public Integer noOfRecords{get; set;}
    Public Integer size{get;set;}
    public String surAns{get; set;}
    public String commentPopup {get; set;}
    public List<Survey_Q_A__c> surveyList {get; set;}
    public List<Survey_Q_A__c> surveyList1 {get; set;}
    //recent addition for survey popup
    public Survey_Q_A__c surveyQA1 {get;set;}
    public String UserId {get; set;}
    public String UserAccount {get; set; }
    public String Name {get; set; }
    public String SurveyName {get; set; }
    public String Question { get; set; }
    public String Question1 { get; set; }
    public String Answer1 {get; set;}
    public String Answer2 {get; set;}
    public String Answer3 {get; set;}
    public Date FromDate {get;set;}
    public Date EndDate {get;set;}
    public String likeCount {get; set;}
    public String sessionId{get;set;}
    public boolean showSurveyWindow {get; set;}
    public boolean thankYouResponse {get; set;}
    public boolean likeCountRend {get; set;}
    public boolean pieDataAns {get; set;}
    public List<Survey_Q_A__c> surveyQuestions {get; set;}
    public List<SelectOption> options {get; set;}
    public String passIds {get; set;}
    public boolean displayPopup {get; set;}
    public List<Idea_Comment_Info__c> commentData {get; set;}
    public Integer countComment {get; set;}
    public Map<String,String> ideaCommMap {get; set;}
    public List<Idea_Information__c> ideaList {get; set;}
    public List<Idea_Information__c> popularideaList {get; set;}
    public List<Idea_Information__c> TopideaList {get; set;}
    public String selectedMonth {get; set;}
    public String selectedYear {get; set;}
    public String selectedMonthh {get; set;}
    public String selectedYearr {get; set;}
    public String selectedWeek {get; set;}
    public String DisplayTitle {get; set;}
    public String DisplayDescription {get; set;}
    public List<SelectOption> optionsMonth {get; set;}
    public List<SelectOption> optionsWeek {get; set;}
    public string Ids {get; set;}
    public String SelectedDateRange {get; set;}
    public String QuestionPieChart {get; set;}
    public String QuestionPieChart1 {get; set;}
    public String QuestionPieChart2 {get; set;}
    public String QuestionPieChart3 {get; set;}
    public String QuestionPieChart4 {get; set;}
    public String QuestionPieChart5 {get; set;}
    public String QuestionPieChart6 {get; set;}
    public String answers1 {get; set;}
    public String answers2 {get; set;}
    public String answers3 {get; set;}
    private Community community = null;
    public String ideaWerId {get; set;}
    public Idea_Information__c displayIdeas {get; set;}
    public List<Idea_Comment_Info__c> displayIdeaComments {get;set;}
    public String TestString;
    public boolean dup {get; set;}
    
    
    public IdeaPageController1(ApexPages.StandardController controller) {
        surveyAnswered= false;
        System.debug('Entering 1');
        surveyList = new List<Survey_Q_A__c>();
        showSurveyWindow = false;
        thankYouResponse = false;
        pieDataAns = true;
        this.ideaPage = (Idea_Information__c)controller.getRecord();
        likeCountRend = true; 
        List<Survey_Q_A__c> surveyQues = new List<Survey_Q_A__c>();
        Survey_Q_A__c surverVal=new Survey_Q_A__c();
        date myDate = date.today();
        date weekStart = myDate.toStartofWeek().addDays(1);
        
        List<String> QuestionPieChartList = new List<String>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().Month();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        
        surveyQues = [SELECT Question__c, Best_Answer__c,Answer1Perc__c,Answer2Perce__c,Answer3Perc__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where Start_Date__c =: weekStart limit 1];
        if(surveyQues.size() > 0) { 
            TestString = surveyQues[0].Question__c;
            QuestionPieChart = TestString.substring(0,15) +'...';
            QuestionPieChart6 = TestString;
            answers1 = surveyQues[0].Answer1__c;
            answers2 = surveyQues[0].Answer2__c;
            answers3 = surveyQues[0].Answer3__c;
            
        }
        
    }
    
    
    //Check the login user
    public pagereference isValidUser(){
        pagereference pg = new pagereference('/apex/SFLoginPage1');
        sessionId = Apexpages.currentpage().getparameters().get('session');
        List<User_Information__c> userList =[select id,First_Name__c,Last_Name__c,Email__c,Password__c,Is_Login__c,Session_Id__c,UserAccount__r.Name from User_Information__c where Session_Id__c !=null AND Session_Id__c=:sessionId AND Is_Login__c=true limit 1];
        if(userList.size()>0)
        {
            UserId = userList[0].Id;
            Name = userList[0].First_Name__c + ' ' + userList[0].Last_Name__c;
            UserAccount = userList[0].UserAccount__r.Name;
        }
        System.debug('userList '+userList.size());
        if(userList.size()==0)
            return pg; 
        else   
            return null;
    }
    
    //Display Idea and Idea Comments popup on click of idea
    public pageReference passTitleValues() {
        String interviewdate = Apexpages.currentPage().getParameters().get('aName');
        displayIdeas = [select Id,Title__c,Description__c from Idea_Information__c where Id =: ideaWerId limit 1];
        DisplayTitle = displayIdeas.Title__c;
        DisplayDescription = displayIdeas.Description__c;
        Title1 = displayIdeas.Title__c;
        displayIdeaComments = [select Id,Description__c from Idea_Comment_Info__c where Idea_Information__c =: ideaWerId];
        
        return null;
    }
    
    // Idea Records Pagination for Recent Ideas Tab
    public ApexPages.StandardSetController setCon {
        get{
            //community = [ SELECT Id FROM Community WHERE Name = 'Internal Community'];
            if(setCon == null){
                size=5;
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator([Select Id,Title__c,Description__c,Like_Count_Total__c,NumComments__c from Idea_Information__c order by createdDate DESC]));
                setCon.setPageSize(size);
                noOfRecords = setCon.getResultSize();
            }
            return setCon;
            
        }
        set;
        
    }
    
    public List<Idea_Information__c> getdata() {
        ideaList = new List<Idea_Information__c>();
        Set<Id> ideaSet = new Set<Id>();
        for(Idea_Information__c i:(List<Idea_Information__c>)setCon.getRecords()) {
            ideaSet.add(i.id);
            ideaList.add(i);
        }    
        return ideaList;
    }
    
    // Idea Records Pagination for Popular Ideas Tab
    public ApexPages.StandardSetController setpopularIdeas {
        get{
            //community = [ SELECT Id FROM Community WHERE Name = 'Internal Community'];
            if(setpopularIdeas == null){
                size=5;
                setpopularIdeas = new ApexPages.StandardSetController(Database.getQueryLocator([Select Id,Title__c,Description__c,Like_Count_Total__c,NumComments__c from Idea_Information__c where Like_Count_Total__c != null order by Like_Count_Total__c DESC]));
                setpopularIdeas.setPageSize(size);
                noOfRecords = setpopularIdeas.getResultSize();
            }
            
            return setpopularIdeas;
        }set;
    }
    
    public List<Idea_Information__c> getpopulardata() {
        popularideaList = new List<Idea_Information__c>();
        for(Idea_Information__c i:(List<Idea_Information__c>)setpopularIdeas.getRecords()) {
            popularideaList.add(i);
        }
        return popularideaList;
    }
    
    ///Top All Time Discussion:24112016
    
    public ApexPages.StandardSetController setTopIdeas {
        get{
            //community = [ SELECT Id FROM Community WHERE Name = 'Internal Community'];
            if(setTopIdeas == null){
                size=5;
                setTopIdeas = new ApexPages.StandardSetController(Database.getQueryLocator([Select Id,Title__c,Description__c,Like_Count_Total__c,NumComments__c from Idea_Information__c where Like_Count_Total__c != null order by LastModifieddate DESC]));
                setTopIdeas.setPageSize(size);
                noOfRecords = setTopIdeas.getResultSize();
            }
            
            return setTopIdeas;
        }set;
    }
    
    public List<Idea_Information__c> getTopdata() {
        TopideaList = new List<Idea_Information__c>();
        for(Idea_Information__c i:(List<Idea_Information__c>)setTopIdeas.getRecords()) {
            TopideaList.add(i);
        }
        return TopideaList;
    }
    ///Top All Time Discussion:24112016 END
    
    //openPopupSurveyResult start
    public pagereference openPopupSurveyResult(){
        
        return null;
    }
    //openPopupSurveyResult END
    
    //Insert Idea record
    public pagereference SaveController() {
        System.debug('Entering'+ideaPage.Title__c);
        //Community community = [ SELECT Id FROM Community WHERE Name = 'Internal Community'];
        String title = ideaPage.Title__c;
        String BodyIdea = ideaPage.Description__c;
        Idea_Information__c ideaPage = new Idea_Information__c();
        ideaPage.Title__c = title;
        ideaPage.Description__c = BodyIdea;
        //ideaPage.communityId = community.Id;
        insert ideaPage;
        pagereference p= apexpages.currentpage();
        p.setredirect(true);
        return p;
       // return null;
    }
    //Insert Comment Record
    public void commentController() {
        commentData = [select Id,Description__c,Idea_Information__c from Idea_Comment_Info__c where Idea_Information__c =:titleIdea];
        Idea_Comment_Info__c  commentIdea = new Idea_Comment_Info__c();
        commentIdea.Description__c = BodyIdea;
        commentIdea.Idea_Information__c = TitleIdea;
        insert commentIdea; 
    }
    
    // Code Added to generate Like Count on each individual Idea
    public void likeIdea() {
        
        
        Idea_Like__c ideaLike = new Idea_Like__c();
        ideaLike.Like__c = true;
        ideaLike.Idea_Information__c = Apexpages.currentpage().getparameters().get('likeCounts');
        ideaLike.User_Information__c = userId;
        //ideaLike.OwnerId = userinfo.getuserId();
        system.debug('Like -----'+ userId );
        
        
        List <Idea_Like__c> UserLikeList = [select Idea_Information__c,Like__c, User_Information__c from Idea_Like__c where User_Information__c =: userId and Idea_Information__c=: ideaLike.Idea_Information__c];
        if(UserLikeList.size() <1)
        {
            insert ideaLike;
            
        }
        else
        {
            
            system.debug('already liked it');
        }
    }
    
    // Month and Week Logic on survey page
    public List<SelectOption> getoptionsMonths() {
        List<SelectOption> monthOptions = new List<SelectOption>();
        monthOptions.add(new SelectOption('None','--None--'));
        monthOptions.add(new SelectOption('1','January'));
        monthOptions.add(new SelectOption('2','February'));
        monthOptions.add(new SelectOption('3','March'));
        monthOptions.add(new SelectOption('4','April'));
        monthOptions.add(new SelectOption('5','May'));
        monthOptions.add(new SelectOption('6','June'));
        monthOptions.add(new SelectOption('7','July'));
        monthOptions.add(new SelectOption('8','August'));
        monthOptions.add(new SelectOption('9','September'));
        monthOptions.add(new SelectOption('10','October'));
        monthOptions.add(new SelectOption('11','November'));
        monthOptions.add(new SelectOption('12','December'));
        return monthOptions;
    }
    public List<SelectOption> getoptionsYear() {
        List<SelectOption> YearOptions = new List<SelectOption>();
        YearOptions.add(new SelectOption('None','--None--'));
        for (integer i=2016; i<= 2040; i++) {
            YearOptions.add(new SelectOption(String.valueOf(i), String.valueOf(i)));
        }
        return YearOptions;
    }
    public List<SelectOption> getoptionsYear1() {
        List<SelectOption> YearOptions = new List<SelectOption>();
        YearOptions.add(new SelectOption('None','--None--'));
        for (integer i=2017; i<= 2040; i++) {
            YearOptions.add(new SelectOption(String.valueOf(i), String.valueOf(i)));
        }
        return YearOptions;
    }    
    public List<SelectOption> getoptionsWeek() {
        List<SelectOption> WeekOptions = new List<SelectOption>();
        WeekOptions.add(new SelectOption('None','--None--'));
        for (integer i=1; i< 3; i++) {
            WeekOptions.add(new SelectOption(String.valueOf(i), String.valueOf(i)));
        }
        return WeekOptions;
    }
    
    //Month Logic
    public pagereference monthListOptions() {
        if(selectedYear != null && selectedYear != 'None')
            getMonthsList();
        return null;
    }
    public List<String> monthsList;
    public List<SelectOption> getMonthsList() {
        List<SelectOption> monthOptions = new List<SelectOption>();
        monthOptions.add(new SelectOption('None','--None--'));
        if(selectedYear != null && selectedYear != 'None') {
            monthsList = new List<String>();
            Date currentDateOfMonth = Date.Today();
            Integer currentYear = currentDateOfMonth.Year();
            Integer currentMonth;
            if(currentYear == Integer.valueOf(selectedYear)) {
                currentMonth  = currentDateOfMonth.month();
            }
            else {
                currentMonth = 1;
            }
            Map<Integer,String> monthsMap = new Map<Integer,String>();
            
            monthsMap.put(1,'January');
            monthsMap.put(2,'February');
            monthsMap.put(3,'March');
            monthsMap.put(4,'April');
            monthsMap.put(5,'May');
            monthsMap.put(6,'June');
            monthsMap.put(7,'July');
            monthsMap.put(8,'August');
            monthsMap.put(9,'September');
            monthsMap.put(10,'October');
            monthsMap.put(11,'November');
            monthsMap.put(12,'December');            
            
            for(Integer i = currentMonth; i <= 12 ; i ++) {
                String s = String.valueOf(i);
                String q = String.valueOf(monthsMap.get(i));
                monthOptions.add(new SelectOption(s,q)); 
            }
            
            
        }
        return monthOptions;
    }
    // Week Logic
    public pagereference weekslistoptions(){
        if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None')
            getWeeksList();
        return null;
    }
    
    Public List<String> weeksList;
    Public List<SelectOption> getWeeksList(){        
        system.debug('Selectd Month___'+selectedMonth+'Year___'+selectedYear);
        List<SelectOption> WeekOptions = new List<SelectOption>();
        WeekOptions.add(new SelectOption('--none--', '--None--'));
        if(selectedMonth != null && selectedYear != null && selectedMonth != 'None' && selectedYear != 'None'){
            weeksList = new List<String>();
            date weekstartdate;
            Date d = Date.newInstance(integer.valueOf(selectedYear), integer.valueOf(selectedMonth), 1);
            DateTime dt=DateTime.newInstance(d, Time.newInstance(0, 0, 0, 0));
            String dayOfWeek=dt.format('EEEE');
            system.debug('___'+d+'____'+dt+'____'+dayOfWeek);
            integer weekNumber;
            if(dayOfWeek =='monday'){
                weekstartdate = d; 
                System.debug('D....'+d);
            }else if(dayOfWeek =='Tuesday'){
                d= d.addDays(-1);  
                System.debug('D....'+d);
            }else if(dayOfWeek =='wednesday'){
                d= d.addDays(-2); 
                System.debug('D....'+d);
            }else if(dayOfWeek =='thursday'){
                d= d.addDays(-3);  
                System.debug('D....'+d);
            }else if(dayOfWeek =='friday'){
                d= d.addDays(-4);  
                System.debug('D....'+d);
            }else if(dayOfWeek =='saturday'){
                d= d.addDays(-5);
                System.debug('D....'+d);
            }else if(dayOfWeek =='Sunday'){
                d= d.addDays(-6); 
                System.debug('D....'+d);
            }
            Set<Integer> lstblockedWeeks = new set<Integer>();
            if(selectedMonth != null && selectedYear != null){                
                for(Survey_Q_A__c  obj : [Select Id,Start_Date__c,End_Date__c,Month__c,Year__c from Survey_Q_A__c where Month__c =: Decimal.valueOf(selectedMonth) and  Year__c =: Decimal.valueOf(selectedYear)]){
                    system.debug('Survey___**'+obj.Start_Date__c);
                    lstblockedWeeks.add(Integer.valueOf(DateTime.newInstance(obj.Start_Date__c, Time.newInstance(0, 0, 0, 0)).format('w')));
                }
            } 
            weekNumber = integer.valueOf(DateTime.newInstance(d, Time.newInstance(0, 0, 0, 0)).format('w'));
            system.debug('WeekNumer______'+weekNumber);
            if (weekNumber >= 53){
                weekNumber = 1;
                }
            if(!lstblockedWeeks.contains(weekNumber))
                WeekOptions.add(new SelectOption(string.valueOf(d)+' to '+string.valueOf(d.addDays(6)),string.valueOf(d)+' to '+string.valueOf(d.addDays(5))));
            if(!lstblockedWeeks.contains(weekNumber+1))
                WeekOptions.add(new SelectOption(string.valueOf(d.addDays(7))+' to '+string.valueOf(d.addDays(13)),string.valueOf(d.addDays(7))+' to '+string.valueOf(d.addDays(12))));
            if(!lstblockedWeeks.contains(weekNumber+2))
                WeekOptions.add(new SelectOption(string.valueOf(d.addDays(14))+' to '+string.valueOf(d.addDays(19)),string.valueOf(d.addDays(14))+' to '+string.valueOf(d.addDays(19))));
            if(!lstblockedWeeks.contains(weekNumber+3))
                WeekOptions.add(new SelectOption(string.valueOf(d.addDays(21))+' to '+string.valueOf(d.addDays(26)),string.valueOf(d.addDays(21))+' to '+string.valueOf(d.addDays(26))));
            if(d.addDays(28).month() == Integer.valueOf(selectedMonth)){
                if(!lstblockedWeeks.contains(weekNumber+4))
                    WeekOptions.add(new SelectOption(string.valueOf(d.addDays(28))+' to '+string.valueOf(d.addDays(33)),string.valueOf(d.addDays(28))+' to '+string.valueOf(d.addDays(33))));
            } 
            
            if(selectedMonth != null && selectedYear != null){
                for(Survey_Q_A__c  obj : [Select Id,Start_Date__c,End_Date__c,Month__c,Year__c from Survey_Q_A__c where Month__c =: Decimal.valueOf(selectedMonth) and  Year__c =: Decimal.valueOf(selectedYear)]){
                    system.debug('Survey___**'+obj.Start_Date__c);
                }
            } 
            
        }
        return WeekOptions;
    }
    // Code Added to display current survey on Page
    public List<Survey_Q_A__c> getsurveyQA() {
        System.debug('Looping');
        date myDate = date.today();
        date weekStart = myDate.toStartofWeek().addDays(1);
        surveyList = [select Id,Question__c,Answer1__c,Answer2__c,Answer3__c from Survey_Q_A__c where Start_Date__c =: weekStart limit 1];
        System.debug('Testing'+surveyList);
        return surveyList;            
    }
    
    // Code Added for submission of Survey Answer
    public List<SelectOption> getsurAnswers() {
        Options = new List<SelectOption>();
        System.debug('Options'+surveyList);
        if(surveyList != null) {
            for(Survey_Q_A__c sq:surveyList) {
                if(sq.Answer1__c != null || sq.Answer2__c != null || sq.Answer3__c != null) {
                    options.add(new SelectOption('1'+sq.Answer1__c+sq.Id,sq.Answer1__c));
                    options.add(new SelectOption('2'+sq.Answer2__c+sq.Id,sq.Answer2__c));
                    options.add(new SelectOption('3'+sq.Answer3__c+sq.Id,sq.Answer3__c));
                }
            }
        }    
        return options; 
    }  
    public boolean surveyAnswered {get;set;}
    public void submitAnswer() {
        surveyAnswered = false;
        if (surAns != null){
            
            System.debug('Entering Entering'+surAns+surAns.Right(18));
            Survey_Q_A__c ques = [select Id,Answer1__c,Answer2__c,Answer3__c from Survey_Q_A__c where Id =: surAns.Right(18)];
            System.debug('Entering Entering'+ques);
            System.debug('Entering Entering'+surAns.Right(18));
            Survey_Answers__c surAnswer = new Survey_Answers__c();
            String str = surAns.Remove(surAns.Right(18));
            surAnswer.Survey_Q_A__c = surAns.Right(18);
            
            if(surAns.Left(1) == '1') {
                surAnswer.Answer1__c = true;
                surAnswer.Selected_Answer__c = ques.Answer1__c;
            }
            else if(surAns.Left(1) == '2') {
                surAnswer.Answer2__c = true;
                surAnswer.Selected_Answer__c = ques.Answer2__c;
            }
            else if(surAns.Left(1) == '3') {
                surAnswer.Answer3__c = true;
                surAnswer.Selected_Answer__c = ques.Answer3__c;
            }
            List<User_Information__c> CurrentUuser =[select id from User_Information__c where Session_Id__c !=null AND Session_Id__c=:sessionId AND Is_Login__c=true limit 1];
            surAnswer.User_Information__c= CurrentUuser[0].Id;
            
            List <Survey_Answers__c> ServeyOneCheck =[select id from Survey_Answers__c where User_Information__c=: surAnswer.User_Information__c and Survey_Q_A__c=:surAnswer.Survey_Q_A__c ]; 
            system.debug('SIZEEEEEEEEEEE'+ServeyOneCheck.size());
            surveyAnswered= true;
            if((ServeyOneCheck.size())<1)
            {                        
                insert surAnswer;
                System.debug('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'+surAnswer+'GGGGGGGGGGGGG'+CurrentUuser[0].Id);
            }
            else
            {                        
                System.debug('GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG'+surAnswer+'GGGGGGGGGGGGG'+CurrentUuser[0].Id);
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.WARNING,'Already submitted'));
                surveyAnswered= false;
            }
            
        }
        else{
            
            System.debug('error msg for radio button');
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Please Select any one Option'));
            surveyAnswered= false;
        }  
        
    }    
    // Creation Of Survey
    public PageReference showSurveyProject() {
        
        String dateRange = selectedWeek;
        String[] dates1 = dateRange.split('to');
        Date FromDate1 = Date.ValueOf(dates1[0]);
        Date ToDate1 = Date.ValueOf(dates1[1]);
        
        Survey_Q_A__c survey = new Survey_Q_A__c();
        survey.Name = SurveyName;
        survey.Question__c = Question;
        survey.Answer1__c = Answer1;
        survey.Answer2__c = Answer2;
        survey.Answer3__c = Answer3;
        survey.Start_Date__c = FromDate1;
        survey.End_Date__c = ToDate1;
        survey.Year__c = Integer.valueOf(selectedYear);
        survey.Month__c = Integer.valueOf(selectedMonth);
        //string usersessionid=userinfo.getsessionid();
        
        try {
            insert survey;
        } 
        catch(Exception e) {
            System.debug('Exception'+e);
        }    
        
        Ids = survey.id;
        surveyQuestions = [select Id,Question__c,Answer1__c,Answer2__c,Answer3__c from Survey_Q_A__c where Id=:survey.id];  
        pagereference p= apexpages.currentpage();
        p.setredirect(true);
        return p;
        
    }
    
    
    
    public PageReference actionSupport() {
        List<Survey_Q_A__c> weekSurveyList = new List<Survey_Q_A__c>();
        weekSurveyList = [select Id from Survey_Q_A__c where Month__c =: Integer.valueOf(selectedMonth) and Year__c =: Integer.valueOf(selectedYear)];
        return null;
    }
    
    // Display Live Pie chart
    public List<PieWedgeData> getPieData() 
    {  
        List<PieWedgeData> data = new List<PieWedgeData>();
        data = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey = new List<Survey_Q_A__c>();
        Integer mnth = System.Today().MOnth();
        Integer yr = System.Today().Year();
        date myDate = date.today();
        date weekStart = myDate.toStartofWeek().addDays(1);
        
        survey = [SELECT Question__c, Best_Answer__c,Answer1_Percentage__c,Answer2_Percentage__c,Answer3_Percentage__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where Start_Date__c =: weekStart limit 1 ];
        
        if(survey.size() > 0) { 
            
            for(Survey_Q_A__c temp:survey)    
            {    
                string ans1 = temp.Answer1__c;
                string ans2 = temp.Answer2__c;
                string ans3 = temp.Answer3__c;
                string answer1 = ans1.substring(0,2) +'...';
                string answer2 = ans2.substring(0,2) +'...';
                string answer3 = ans3.substring(0,2) +'...';       
                data.add(new PieWedgeData(answer1,temp.Answer1_Percentage__c));
                data.add(new PieWedgeData(answer2,temp.Answer2_Percentage__c));
                data.add(new PieWedgeData(answer3,temp.Answer3_Percentage__c));
            }
        }    
        return data;   
    }
    
    // Display Pie Chart based on selection of month and year
    public pagereference surveyChartRes() {
        if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None')
            //getPieData2();
            
            getQuestionPieChart1();
        getQuestionPieChart2();
        getQuestionPieChart3();
        getQuestionPieChart4();
        getQuestionPieChart5();
        
        return null;       
    }
    
    public List<PieWedgeData> getPieData2() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        pieDataAns = true;
        List<PieWedgeData> data1 = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey1 = new List<Survey_Q_A__c>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        survey1 = [SELECT Question__c, Best_Answer_Actual__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr];
        //survey = Database.Query(sql);
        for(Survey_Q_A__c temp:survey1)
        {   
            if(temp.Best_Answer_Actual__c != 0) {
                data1.add(new PieWedgeData(temp.Question__c,temp.Best_Answer_Actual__c));
            }
        }
        System.debug('@@@@@@@@@@@'+data1+mnth+yr);
        return data1;   
    }
    //test
    public List<PieWedgeData> getPieData3() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        pieDataAns = true;
        List<PieWedgeData> data1 = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey1 = new List<Survey_Q_A__c>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        Date myDate1 = Date.newInstance((yr), mnth, 1);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('firstweek'+weekDate1 + ' '+weekDate2);
        survey1 = [SELECT Question__c, Best_Answer__c,Answer1_Percentage__c,Answer2_Percentage__c,Answer3_Percentage__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2  order by Start_Date__c];
        //survey = Database.Query(sql);
        if(survey1.size() > 0) { 
            
            for(Survey_Q_A__c temp:survey1)    
            {    
                if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None'){
                    string ans1 = temp.Answer1__c;
                    string ans2 = temp.Answer2__c;
                    string ans3 = temp.Answer3__c;
                    string answer1 = ans1.substring(0,2) +'...';
                    string answer2 = ans2.substring(0,2) +'...';
                    string answer3 = ans3.substring(0,2) +'...';       
                    data1.add(new PieWedgeData(answer1,temp.Answer1_Percentage__c));
                    data1.add(new PieWedgeData(answer2,temp.Answer2_Percentage__c));
                    data1.add(new PieWedgeData(answer3,temp.Answer3_Percentage__c));
                }
            }    
        }    
        
        System.debug('@@@@@@@@@@@'+data1+mnth+yr);
        return data1;   
    }
    public List<PieWedgeData> getPieData4() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        pieDataAns = true;
        List<PieWedgeData> data1 = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey1 = new List<Survey_Q_A__c>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        Date myDate1 = Date.newInstance((yr), mnth, 7);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('secondweek'+weekDate1 + ' '+weekDate2);
        survey1 = [SELECT Question__c, Best_Answer__c,Answer1_Percentage__c,Answer2_Percentage__c,Answer3_Percentage__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2  order by Start_Date__c];
        //survey = Database.Query(sql);
        if(survey1.size() > 0) { 
            
            for(Survey_Q_A__c temp:survey1)    
            {    
                if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None'){
                    string ans1 = temp.Answer1__c;
                    string ans2 = temp.Answer2__c;
                    string ans3 = temp.Answer3__c;
                    string answer1 = ans1.substring(0,2) +'...';
                    string answer2 = ans2.substring(0,2) +'...';
                    string answer3 = ans3.substring(0,2) +'...';       
                    data1.add(new PieWedgeData(answer1,temp.Answer1_Percentage__c));
                    data1.add(new PieWedgeData(answer2,temp.Answer2_Percentage__c));
                    data1.add(new PieWedgeData(answer3,temp.Answer3_Percentage__c));
                }
            }    
        }    
        
        System.debug('@@@@@@@@@@@'+data1+mnth+yr);
        return data1;   
    }
    public List<PieWedgeData> getPieData5() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        pieDataAns = true;
        List<PieWedgeData> data1 = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey1 = new List<Survey_Q_A__c>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        Date myDate1 = Date.newInstance((yr), mnth, 14);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('thirdweek'+weekDate1 + ' '+weekDate2);
        survey1 = [SELECT Question__c, Best_Answer__c,Answer1_Percentage__c,Answer2_Percentage__c,Answer3_Percentage__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2  order by Start_Date__c];
        //survey = Database.Query(sql);
        if(survey1.size() > 0) { 
            
            for(Survey_Q_A__c temp:survey1)    
            {    
                if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None'){
                    string ans1 = temp.Answer1__c;
                    string ans2 = temp.Answer2__c;
                    string ans3 = temp.Answer3__c;
                    string answer1 = ans1.substring(0,2) +'...';
                    string answer2 = ans2.substring(0,2) +'...';
                    string answer3 = ans3.substring(0,2) +'...';       
                    data1.add(new PieWedgeData(answer1,temp.Answer1_Percentage__c));
                    data1.add(new PieWedgeData(answer2,temp.Answer2_Percentage__c));
                    data1.add(new PieWedgeData(answer3,temp.Answer3_Percentage__c));
                }
            }    
        }    
        
        System.debug('@@@@@@@@@@@'+data1+mnth+yr);
        return data1;   
    }
    public List<PieWedgeData> getPieData6() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        pieDataAns = true;
        List<PieWedgeData> data1 = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey1 = new List<Survey_Q_A__c>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        Date myDate1 = Date.newInstance((yr), mnth, 21);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('fourthweek'+weekDate1 + ' '+weekDate2);
        survey1 = [SELECT Question__c, Best_Answer__c,Answer1_Percentage__c,Answer2_Percentage__c,Answer3_Percentage__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2  order by Start_Date__c];
        //survey = Database.Query(sql);
        if(survey1.size() > 0) { 
            
            for(Survey_Q_A__c temp:survey1)    
            {    
                if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None'){
                    string ans1 = temp.Answer1__c;
                    string ans2 = temp.Answer2__c;
                    string ans3 = temp.Answer3__c;
                    string answer1 = ans1.substring(0,2) +'...';
                    string answer2 = ans2.substring(0,2) +'...';
                    string answer3 = ans3.substring(0,2) +'...';       
                    data1.add(new PieWedgeData(answer1,temp.Answer1_Percentage__c));
                    data1.add(new PieWedgeData(answer2,temp.Answer2_Percentage__c));
                    data1.add(new PieWedgeData(answer3,temp.Answer3_Percentage__c));
                }
            }    
        }    
        
        System.debug('@@@@@@@@@@@'+data1+mnth+yr);
        return data1;   
    }
    public List<PieWedgeData> getPieData7() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        pieDataAns = true;
        List<PieWedgeData> data1 = new List<PieWedgeData>();
        List<Survey_Q_A__c> survey1 = new List<Survey_Q_A__c>();
        Integer mnth;
        Integer yr;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        Date myDate1 = Date.newInstance((yr), mnth, 28);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('fifthweek'+weekDate1 + ' '+weekDate2);
        survey1 = [SELECT Question__c, Best_Answer__c,Answer1_Percentage__c,Answer2_Percentage__c,Answer3_Percentage__c,Answer1__c,Answer2__c,Answer3__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2  order by Start_Date__c];
        //survey = Database.Query(sql);
        if(survey1.size() > 0) { 
            
            for(Survey_Q_A__c temp:survey1)    
            {    
                if(selectedMonth != 'None' && selectedMonth != 'null' &&  selectedYear != null && selectedYear != 'None'){
                    string ans1 = temp.Answer1__c;
                    string ans2 = temp.Answer2__c;
                    string ans3 = temp.Answer3__c;
                    string answer1 = ans1.substring(0,2) +'...';
                    string answer2 = ans2.substring(0,2) +'...';
                    string answer3 = ans3.substring(0,2) +'...';       
                    data1.add(new PieWedgeData(answer1,temp.Answer1_Percentage__c));
                    data1.add(new PieWedgeData(answer2,temp.Answer2_Percentage__c));
                    data1.add(new PieWedgeData(answer3,temp.Answer3_Percentage__c));
                }
            }    
        }    
        
        System.debug('@@@@@@@@@@@'+data1+mnth+yr);
        return data1;   
    }
    //questions
    public string getQuestionPieChart1() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        String data1;
        Integer mnth;
        Integer yr;
        date myDate = date.today();
        date myDate2;
        date weekStart = myDate.toStartofWeek().addDays(1);
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        Date myDate1 = Date.newInstance((yr), mnth, 1);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('firstweek'+weekDate1 + ' '+weekDate2);
        surveyQues1 =[SELECT Question__c , start_date__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2 order by Start_Date__c];
        if(surveyQues1.size() > 0) { 
            for(Survey_Q_A__c temp:surveyQues1) {
                data1 = temp.Question__c;
                myDate2 = temp.start_date__c;
                System.debug('QuestionPieChart1'+QuestionPieChart1); 
                QuestionPieChart1 = data1.substring(0,10) +'...'; 
                System.debug('Chart1'+data1);  
                
            }    
        } 
        if(myDate2 <= mydate){
            
            return QuestionPieChart1;
        }        
        else
        {
            QuestionPieChart1 = '';
            return QuestionPieChart1;
        } 
    }
    public string getQuestionPieChart2() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        String data1;
        Integer mnth;
        Integer yr;
        date myDate = date.today();
        date myDate2;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        Date myDate1 = Date.newInstance((yr), mnth, 7);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('secondweek'+weekDate1 + ' '+weekDate2);
        surveyQues1 =[SELECT Question__c , start_date__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2 order by Start_Date__c];
        if(surveyQues1.size() > 0) { 
            for(Survey_Q_A__c temp:surveyQues1) {
                data1 = temp.Question__c;
                myDate2 = temp.start_date__c;
                System.debug('QuestionPieChart2'+QuestionPieChart2); 
                QuestionPieChart2 = data1.substring(0,10) +'...'; 
                System.debug('Chart1'+data1);  
                
            }    
        } 
        if(myDate2 <= mydate){
            
            return QuestionPieChart2;
        }        
        else
        {
            QuestionPieChart2 = '';
            return QuestionPieChart2;
        } 
        
    }
    public string getQuestionPieChart3() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        String data1;
        Integer mnth;
        Integer yr;
        date myDate = date.today();
        date myDate2;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        Date myDate1 = Date.newInstance((yr), mnth, 14);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('thirdweek'+weekDate1 + ' '+weekDate2);
        surveyQues1 =[SELECT Question__c , start_date__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2 order by Start_Date__c];
        if(surveyQues1.size() > 0) { 
            for(Survey_Q_A__c temp:surveyQues1) {
                data1 = temp.Question__c;
                myDate2 = temp.start_date__c;
                System.debug('QuestionPieChart3'+QuestionPieChart3); 
                QuestionPieChart3 = data1.substring(0,10) +'...'; 
                System.debug('Chart1'+data1);  
                
            }    
        } 
        if(myDate2 <= mydate){
            
            return QuestionPieChart3;
        }        
        else
        {
            QuestionPieChart3 = '';
            return QuestionPieChart3;
        } 
        
    }
    public string getQuestionPieChart4() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        String data1;
        Integer mnth;
        Integer yr;
        date myDate = date.today();
        date myDate2;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        Date myDate1 = Date.newInstance((yr), mnth, 21);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('fourthweek'+weekDate1 + ' '+weekDate2);
        
        surveyQues1 =[SELECT Question__c , start_date__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2 order by Start_Date__c];
        if(surveyQues1.size() > 0) { 
            for(Survey_Q_A__c temp:surveyQues1) {
                data1 = temp.Question__c;
                myDate2 = temp.start_date__c;
                System.debug('QuestionPieChart4'+QuestionPieChart4); 
                QuestionPieChart4 = data1.substring(0,10) +'...'; 
                System.debug('Chart1'+data1);  
                
            }    
        } 
        if(myDate2 <= mydate){
            
            return QuestionPieChart4;
        }        
        else
        {
            QuestionPieChart4 = '';
            return QuestionPieChart4;
        } 
        
    }
    
    public string getQuestionPieChart5() 
    {      
        List<Survey_Q_A__c> surveyQues1 = new List<Survey_Q_A__c>();
        String data1;
        Integer mnth;
        Integer yr;
        date myDate = date.today();
        date myDate2;
        System.debug('MonthSF'+selectedMonth);
        if(selectedMonth != null && selectedMonth != 'None') {
            mnth = Integer.valueOf(selectedMonth);
        }
        else {
            mnth = System.Today().MOnth();
        }
        if(selectedYear != null && selectedYear != 'None') {
            yr = Integer.valueOf(selectedYear);
        }
        else {
            yr = System.Today().Year();
        }
        
        Date myDate1 = Date.newInstance((yr), mnth, 28);
        Date weekDate1=myDate1.toStartofWeek().addDays(1);
        Date weekDate2=myDate1.toStartofWeek().addDays(6);
        System.debug('fourthweek'+weekDate1 + ' '+weekDate2);
        
        surveyQues1 =[SELECT Question__c , start_date__c FROM Survey_Q_A__c where CALENDAR_MONTH(CreatedDate) = :mnth and CALENDAR_YEAR(CreatedDate) = :yr and start_date__c >= :weekDate1 and start_date__c <= :weekDate2 order by Start_Date__c];
        if(surveyQues1.size() > 0) { 
            for(Survey_Q_A__c temp:surveyQues1) {
                data1 = temp.Question__c;
                myDate2 = temp.start_date__c;
                System.debug('QuestionPieChart4'+QuestionPieChart4); 
                QuestionPieChart5 = data1.substring(0,10) +'...'; 
                System.debug('Chart1'+data1);  
                
            }    
        } 
        if(myDate2 <= mydate){
            
            return QuestionPieChart5;
        }        
        else
        {
            QuestionPieChart5 = '';
            return QuestionPieChart5;
        } 
        
        
    }
    
    public class PieWedgeData 
    {  
        public String name { get; set; }  
        public Decimal data { get; set; }  
        
        public PieWedgeData(String name, Decimal data) 
        {  
            this.name = name;  
            this.data = data;  
        }  
    } 
    // LogOut logic
    public pagereference Logout()
    {
        sessionId = Apexpages.currentpage().getparameters().get('session');
        List<User_Information__c> userList =[select id,Is_Login__c,Session_Id__c from User_Information__c where Session_Id__c !=null AND Session_Id__c=:sessionId AND Is_Login__c=true limit 1];
        if(userList.size()>0)
        {
            userList[0].Session_Id__c = null;
            userList[0].Is_Login__c = false;
            update userList;
            pagereference pg = new pagereference('/apex/SFLoginPage1');
            return pg;
        }
        else
            return null; 
    }
    
    
}