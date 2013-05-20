<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TheLayout.aspx.cs" Inherits="MECS.TheLayout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Multi Ethnic Cohort Study</title>
   <!--Css Links -->

    <link href="Scripts/Layout/layout-default-latest.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/jqwidgets/styles/jqx.base.css" rel="stylesheet" type="text/css" />

    <!--Libray Links -->
    <script src="Scripts/UIjs/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="Scripts/Layout/App.layout-latest.min.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxcore.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxexpander.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets/jqxnavigationbar.js" type="text/javascript"></script>
    <style type="text/css">
    
    html, body {
		background:	#666;
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
	#UC_Logo
	{
	    float:right;
	}
	#container {
		background:	#999;
		min-height:	300px;
		min-width:	600px;
		position:	absolute;
		top:		30px;	/* margins in pixels */
		bottom:		50px;	/* could also use a percent */
		left:		50px;
		right:		50px;
	}
	.pane {
		display:	none; /* will appear when layout inits */
	}
	 
    </style>
</head>

<body>
    <form id="LayoutForm" ">
    
     
    <div id="container">  
        
          <div id="IDeastPane" class='ui-layout-east'>
                Eaest
          </div> <!--End Eaest Pane -->

          <div id="IDwestPane" class='ui-layout-west'> <!--Navigation Menu -->
                <!--Root NBar -->
                West
                
               <div class="jqxNavigationBar">
                   
                <a href="#">Intelligence</a>
                
                        
                </div><!--End Root NBar -->

           </div> <!--End West Pane -->
    
           <div id="IDnorthPane" class='ui-layout-north'>
                <h2>Multi-Ethinic Cohort Study <img id="UC_Logo" src="Styles/img/uchicago_logo.jpg"/></h2> 
           </div> <!--End North Pane -->
    
    
           <div id="IDcenterPane" class="ui-layout-center">
                Center
           </div><!--End Center Pane -->

  </div><!--End Container -->
    
    <script type="text/javascript">

        $(document).ready(function () {
            //$("body").layout();
            $('#container').layout({ north__size: 95
            }); // end Container
            $("#jqxNavigationBar").jqxNavigationBar();
            $("#jqxNavigationBar").jqxNavigationBar({ expandMode: 'single', arrowPosition: 'left', height: 400, width: 300 });
        }); //End Ready
    
    </script>
    
    </form>
</body>
</html>
