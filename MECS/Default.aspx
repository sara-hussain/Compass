<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MECS.Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta name="viewport" content="width=device-width, initial-scale=1" />
 <link rel="Shortcut Icon" href="Image/UChicago_logo.ico" />  

   <title></title>
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
    <script src="Scripts/DefaultLib.js" type="text/javascript"></script>
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
	
	#centerHeader
	{
	    
	margin-left: auto;
    margin-right: auto;    
	    
	}

	
	#IDSouthPane
	{
	      background-color:#999;
	      text-align:center;
	      font-size:small;
	}
	
	
	#container {
		background:	#999;
		
		position:	absolute;
		top:		0px;	/* margins in pixels */
		bottom:		0px;	/* could also use a percent */
		left:		50px;
		right:		50px;
	}
	.pane {
		display:	none; /* will appear when layout inits */
	}
	
	.ui-layout-pane-north {
    
    overflow: hidden !important;
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
	
	img, object, embed, video {
	max-width: 100%;
}

    </style>
</head>

<body>

<!--    <form id="LayoutForm" "> -->
    
     
   <div id="container">   
       
    
    
        <div id="IDwestPane" class='ui-layout-west' style="background-color:#F7F6EE" > <!--Navigation Menu -->
                <!--Root NBar -->
               
        <div id="jqxNavigationBar" >
            
            

            <div style='margin-top: 2px;'>
            
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
            
            
   </div>
    <!--End Root NBar -->

  </div> <!--End West Pane -->
    
           <div id="IDnorthPane" class='ui-layout-north'>
    
   
     
            
            <div id="centerHeader"> 


            <img src="image/Compassbannertransp.png"/ height="190" width="625"> 
    
                 
           </div> 
           </div> <!--End North Pane -->
    
            <div id="IDSouthPane" class='ui-layout-south'>
           
                (C) 2012-2018 <a href="http://cancer.uchicago.edu">Comprehensive Cancer Center</a> <!--| <a href="#">Legal</a>-->
                <p style="font-size:x-small; font-style:italic"><b>Disclaimer:</b> Information provided on this website by the COMPASS team is for informational purposes only and does not constitute medical advice. If you need medical advice, please contact your primary caregiver. </p>
           </div> <!--End South Pane -->
    
           <iframe id="IDcenterPane" class="ui-layout-center" src="General/StudySummary.aspx">
               
           </iframe><!--End Center Pane -->

 </div><!--End Container -->
      
    
    <!--</form>-->

<script type="text/javascript">

  
    </script>


</body>
</html>
