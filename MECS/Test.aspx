<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="MECS.Test" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

   

   <title>Multi Ethnic Cohort Study</title>
   <!--Css Links -->

    <link href="Scripts/Layout/layout-default-latest.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/jqwidgets/styles/jqx.base.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/jqwidgets/styles/jqx.energyblue.css" rel="stylesheet" type="text/css" />
    <!--Libray Links -->
    <script src="Scripts/UIjs/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="Scripts/Layout/App.layout-latest.min.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxcore.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxexpander.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxnavigationbar.js" type="text/javascript"></script>
    <style type="text/css">
    
    html, body {
		background:	#EAE9E1;
		width:		100%;
		height:		100%;					
		padding:	0;
		margin:		0;
		overflow:	auto; /* when page gets too small for container min-width/height */
	}
	
	#IDnorthPane  
	{
	    
	    background-color:#841911;
	    text-align:center;
	    color:White;
	}
	#IDSouthPane
	{
	      background-color:#999;
	      text-align:center;
	}
	#UC_Logo
	{
	    float:right;
	}
	#container {
		background:	#999;
		min-height:	300px;
		min-width:	600px;
		position:	absolute;
		top:		0px;	/* margins in pixels */
		bottom:		0px;	/* could also use a percent */
		left:		50px;
		right:		50px;
	}
	.pane {
		display:	none; /* will appear when layout inits */
	}
	 .ui-layout-pane-center { /* IFRAME pane */ 
		padding: 0;
		margin:  0;
	} 
	.ui-layout-resizer { /* all 'resizer-bars' */ 
		background: #DDD; 
		} 
		.ui-layout-resizer-open:hover { /* mouse-over */
			background: #9D9; 
		}
	
	.ui-layout-toggler { /* all 'toggler-buttons' */ 
		background: #AAA; 
		} 
	.ui-layout-toggler-closed { /* closed toggler-button */ 
			background: #CCC; 
			border-bottom: 1px solid #BBB; 
		} 
		
		/* class to make the 'iframe mask' visible */
	.ui-layout-mask {
		opacity: 0.2 !important;
		filter:	 alpha(opacity=20) !important;
		background-color: #666 !important;
	}
	ul { /* basic menu styling */
		margin:		1ex 0;
		padding:	0;
		list-style:	none;
		position:	relative;
	}
	li {
		padding: 0.15em 1em 0.3em 5px;
	}
    </style>
</head>

<body>
    
    
     
   <div id="container">   
       
       <div class="ui-layout-center">
        test
       </div>
    
    
        <div id="IDwestPane" class='ui-layout-west' > <!--Navigation Menu -->
                <!--Root NBar -->
                <div id="jqxNavigationBar" >
            
            

            <div style='margin-top: 2px;'>
            <!--
                    <div style='float: left;'>
                        <img alt='Mail' src='/image/tasksIcon.png' /></div>  -->
                    <div style='margin-left: 4px; float: left;'>
                        About the Studies</div>
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
                                <li onclick='RefreshContentForUL("/General/PIs.aspx")'><a href="#">Primary Investigators</a> </li>
                                <li  onclick='RefreshContentForUL("/General/Co-Investigators.aspx")'><a href="#">Co-Investigators</a></li>
                                <li  onclick='RefreshContentForUL("/General/Staff.aspx")'><a href="#">Staff</a></li>
                            </ul>       


                          </div>
             <div>
                Docs and Referenacs
            </div>       <div>
                                <ul >
                                     <li onclick='RefreshContentForUL("/General/FAQ.aspx")'><a href="#">FAQ</a> </li>
                                    <li onclick='RefreshContentForUL("/General/Tools.aspx")'><a href="#">Tools / References</a> </li>
                                    <li onclick='RefreshContentForUL("/General/NewsLetter.aspx")'><a href="#">Newsletters</a> </li>
                                </ul>
                        </div>
            
             <div>
                Contact Us
            </div>  <div></div>
            
             <div>
              Staff  LogIn
            </div> <div></div>
            
            
   </div>
    <!--End Root NBar -->

       
  </div> <!--End West Pane -->
    
           <div id="IDnorthPane" class='ui-layout-north'>
           
                <h2><%=Page.Title %> <img id="UC_Logo" src="Styles/img/wordmark.png"/></h2> 
           </div> <!--End North Pane -->
    
            <div id="IDSouthPane" class='ui-layout-south'>
           
                (C) 2012-2016 <a href="#">Dept of Health Studies</a> | <a href="#">Privacy Notice</a>  |  <a href="#">Legal</a>
           </div> <!--End South Pane -->
    
           

 </div><!--End Container -->
      
    
    

<script type="text/javascript">

    $(document).ready(function () {
        //$("body").layout();
        $('#container').layout({ north__size: 100
            , west__spacing_closed: 20
		    , west__togglerLength_closed: 100
		    , west__togglerAlign_closed: "top"
		    , west__togglerContent_closed: "M<BR>E<BR>N<BR>U"
		    , west__togglerTip_closed: "Open & Pin Menu"
		    , west__sliderTip: "Slide Open Menu"
		    , west__slideTrigger_open: "mouseover"
            , north__spacing_open: 0
            , south__spacing_open: 0



        }); // end Container
        $("#jqxNavigationBar").jqxNavigationBar({ showArrow: true
                , theme: 'energyblue'
        }); // end
        // $("#jqxNavigationBar").jqxNavigationBar({ expandMode: 'single', arrowPosition: 'left', height: 400, width: 100 });
        $("#jqxNavigationBar").bind("expandingItem", function (event)
        { RefreshContent(event.item); });

        // $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 0);
        //$('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 1);


        $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 3);
        $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 4);
    });    //End Ready

    function RefreshContent(Index) {
        var url = "";

        switch (Index) {
            case 0:
                url = "/General/StudySummary.aspx";
                break;
            case 1:
                url = "/General/ResearchTeam.aspx";
                break;

            case 3:
                url = "/General/ContactUs.aspx";
                break;
            case 4:
                url = "MEC_LogIn.aspx";
                break;
        }

        if (url != "") {


            $("#IDcenterPane").attr('src', url);


        } //end url


    }


    function RefreshContentForUL(URL) {


        $("#IDcenterPane").attr('src', URL);
    }
    </script>


</body>
</html>
