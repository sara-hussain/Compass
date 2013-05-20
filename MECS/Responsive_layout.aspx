<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Responsive_layout.aspx.cs" Inherits="MECS.Responsive_layout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>The Chicago Multi Ethnic Cohort Study</title>
    <!--JavaScript Links -->
    <script src="Scripts/UIjs/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxcore.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxnavigationbar.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxexpander.js" type="text/javascript"></script>
    <script src="Scripts/AppLayoutLib.js" type="text/javascript"></script>
  
   <!--Css Links -->
    <link href="Scripts/jqwidgets/styles/jqx.base.css" rel="stylesheet" type="text/css" />
    <link href="Styles/boilerplate.css" rel="stylesheet" type="text/css" />
    <link href="Styles/AppLayoutFluid.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#leftHeader
	{
	    float:left;    
	    width:23%;
	}
	
	#rightHeader
	{
	    float:right;    
	    width:23%;
	}
</style>

</head>
<body>
    <div id="header" >

      <div id="leftHeader"><img  src="Styles/img/wordmark.png"/></div>
           
            
            <div id="rightHeader"><img  src="Styles/img/uchicago_logo.jpg"/> </div>

                <h3> <%=Page.Title %> </h3> 
                 <h3 style="clear:both;">(COMPASS)</h3>
       </div><!--End header-->

    <div id="gridContainer" class="gridContainer clearfix">
       
       
       
        <div id="leftContent" >
                <div id="jqxNavigationBar" >
                       <div >
            <!--
                    <div style='float: left;'>
                        <img alt='Mail' src='/image/tasksIcon.png' /></div>  -->
                    <div >
                        About the Study</div>
                    </div>   <div>
                        <ul >
                            <li onclick='RefreshContentForUL("/General/StudySummary.aspx")'><a href="#">Summary</a> </li>
                            <li  onclick='RefreshContentForUL("/General/Background.aspx")'><a href="#">Study Background</a></li>
                        </ul>
                    </div>
            
             
             <div>
                Research Team
            </div>        <div>
                             <ul >
                                <li onclick='RefreshContentForUL("/General/PIs.aspx")'><a href="#">Principal Investigators</a> </li>
                                <li  onclick='RefreshContentForUL("/General/Co-Investigators.aspx")'><a href="#">Co-Investigators</a></li>
                                <li  onclick='RefreshContentForUL("/General/Staff.aspx")'><a href="#">Staff</a></li>
                            </ul>       


                          </div>
             <div>
                Docs and References
            </div>       <div>
                                <ul >
                                     <li onclick='RefreshContentForUL("/General/FAQ.aspx")'><a href="#">FAQ</a> </li>
                                    <li onclick='RefreshContentForUL("/General/Tools.aspx")'><a href="#">Tools for Your Health</a> </li>
                                    <li onclick='RefreshContentForUL("/General/NewsLetter.aspx")'><a href="#">Newsletters</a> </li>
                                </ul>
                        </div>
            
             <div>
                Contact Us
            </div>  <div></div>
            <div>
                Participant Login
            </div>  <div></div>
             <div>
              Staff  Login
            </div> <div></div>
            
                </div><!--End NavigationBar-->
        </div><!--End leftContent-->

        <!-- will activate if necessary

        <div id="mnuSeperator" style="text-align:center" ">
            <a href="javascript:mnuView('leftContent')"><img src="Styles/img/minus.png" /> </a> </div> -->
        <div id="mainContent" >
        <iframe id="TheContentFrame" scrolling="no" onload="ResizeFrame(this.id)"  src="General/StudySummary.aspx"  ></iframe>
       
        </div><!--End mainContent-->

   

    </div><!--End Grid Container-->
   
     <div id="footer">
        (C) 2012-2016 <a href="#">Dept of Health Studies</a> | <a href="#">Privacy Notice</a>  |  <a href="#">Legal</a>
        </div>    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#jqxNavigationBar").jqxNavigationBar();

            $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 3);
            $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 4);
            $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 5);

            $("#jqxNavigationBar").bind("expandingItem", function (event)
            { RefreshContent(event.item); });


        }); //End Ready

            
            function RefreshContent(Index) {
                var url = "";

                switch (Index) {
                    case 0:
                        url = "/General/StudySummary.aspx";
                        break;
                    case 1:
                        //url = "/General/ResearchTeam.aspx";
                        url = "/General/PIs.aspx";
                        break;

                    case 2:
                        url = "/General/FAQ.aspx";
                        break;

                    case 3:
                        url = "/General/ContactUs.aspx";
                        break;
                    case 4:
                        url = "Participant_LogIn.aspx";
                        break;
                    case 5:
                        url = "MEC_LogIn.aspx";
                        break;
                }

                if (url != "")
                
                 {


                    $("#TheContentFrame").attr('src', url);


                } //end url


            }
            
            
    </script>

</body>
</html>
