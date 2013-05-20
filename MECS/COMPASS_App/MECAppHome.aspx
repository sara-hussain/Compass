<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MECAppHome.aspx.cs" Inherits="MECS.MECAppHome" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
   <!--Css Links -->

    <link href="../Scripts/Layout/layout-default-latest.css" rel="stylesheet" type="text/css" />
    <link href="../Scripts/jqwidgets/styles/jqx.base.css" rel="stylesheet" type="text/css" />
    <link href="../Scripts/jqwidgets/styles/jqx.energyblue.css" rel="stylesheet" type="text/css" />
    <!--Libray Links -->
    <script src="../Scripts/UIjs/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="../Scripts/Layout/App.layout-latest.min.js" type="text/javascript"></script>
    <script src="../Scripts/jqwidgets/jqxcore.js" type="text/javascript"></script>
    <script src="../Scripts/jqwidgets/jqxexpander.js" type="text/javascript"></script>
    <script src="../Scripts/jqwidgets/jqxnavigationbar.js" type="text/javascript"></script>
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
	#IDSouthPane
	{
	      background-color:#999;
	      text-align:center;
	      font-size:small;
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
		bottom:		50px;	/* could also use a percent */
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
            top: -161px;
            left: -50px;
        }
	li {
		padding: 0.15em 1em 0.3em 5px;
	}
    </style>
</head>

<body>
    <form id="LayoutForm" runat="server">
    
     
    <div id="container">  
        
          
          <div id="IDwestPane" class='ui-layout-west' style="background:#F7F6EE"> <!--Navigation Menu -->
       
        <div class="loginDisplay" style="color:Maroon">
                <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="False">
                  
                    <LoggedInTemplate>
                        Welcome <span class="bold"><asp:LoginName ID="HeadLoginName" runat="server" 
                            meta:resourcekey="HeadLoginNameResource1" /></span>!
                        [ <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" 
                            LogoutText="Log Out" LogoutPageUrl="~/" 
                            meta:resourcekey="HeadLoginStatusResource1"/> ]
                    </LoggedInTemplate>
                </asp:LoginView>
        </div> <!--End LogIn Display -->
            <br />
       
                <!--Root NBar -->
               
        <div id="jqxNavigationBar" >
            <div>
                Manage Questionaire 
            </div>
                    <div>
                             <ul>
                                <li><a href='#'>View/Edit Questionaire</a> </li>
                                <li><a href='#'>Print </a></li>
                            </ul>
                
                    </div>
            
             <div>
                Manage AddressList
                
            </div> 
                    <div>
                        <ul>
                            <li><a href='#' >View Master Address List</a></li>
                            <li><a href='#'>Generate Filtered List</a></li>
                            <li><a href='#'>Replenish Filtered List</a></li>
                            <li><a href='#'>Assign List to Field Staff</a></li>
                        </ul>
                    
                    </div>
            
             <div>
                Manage Field Staff
            </div>      
                        <div>
                                <ul>
                                        <li><a href='#'>Add Field Staff</a></li>
                                        <li><a href='#'>Modify Field Staff</a></li>
                                        <li><a href='#'>Delete Field Staff</a></li>
                                </ul>
                        </div>
            
             <div>
                Manage Reference Data
            </div>  <div></div>
            
             <div>
                Reports
            </div> <div></div>
            
     
       </div>    <!--End Root NBar -->

    </div> <!--End West Pane -->
    
           <div id="IDnorthPane" class='ui-layout-north'>
                <div id="leftHeader"><img  src="../Styles/img/wordmark.png"/></div>
           
            
            <div id="rightHeader"><img  src="../Styles/img/uchicago_logo.jpg"/> </div>
            <div > 
                <h3> <%=Page.Title %> </h3> 
                 <h3 style="clear:both;">(COMPASS)</h3>
           </div> 

              
           </div> <!--End North Pane -->
           
            <div id="IDSouthPane" class='ui-layout-south'>
           
                (C) 2012-2016 <a href="#">Dept of Health Studies</a> | <a href="#">Privacy Notice</a>  |  <a href="#">Legal</a>
           </div> <!--End South Pane -->
    
           <iframe id="IDcenterPane" class="ui-layout-center" src="../Manage_Questions.aspx" >
               
           </iframe><!--End Center Pane -->

  </div><!--End Container -->
    
    <script type="text/javascript">

        $(document).ready(function () {
            //$("body").layout();
            $('#container').layout({ west__spacing_closed: 20
		    , west__togglerLength_closed: 100
		    , west__togglerAlign_closed: "top"
		    , west__togglerContent_closed: "M<BR>E<BR>N<BR>U"
		    , west__togglerTip_closed: "Open & Pin Menu"
		    , west__sliderTip: "Slide Open Menu"
		    , west__slideTrigger_open: "mouseover"
            , north__spacing_open: 0
            , south__spacing_open: 0
            , west__size: '200'
            , west__autoResize: true
            
            }); // end Container
            $("#jqxNavigationBar").jqxNavigationBar({ showArrow: true 
                ,theme:'energyblue',width:200
            });// end
            // $("#jqxNavigationBar").jqxNavigationBar({ expandMode: 'single', arrowPosition: 'left', height: 400, width: 100 });
            $("#jqxNavigationBar").bind("expandingItem", function (event)
            { RefreshContent(event.item); });

           // $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 0);
           
            
            $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 3);
            $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 4);
        });    //End Ready

        function RefreshContent(Index) {
            var url="";
          switch (Index) {
              case 0:
                  url = "/General/AboutTheStudy.htm";
                  break;
              case 1:
                  url = "/General/Aim.htm";
                  break;
              case 2:
                  url = "/General/People.htm";
                  break;
              case 3:
                  url = "/General/ContactUs.htm";
                  break;
              case 4:
                  url = "MEC_LogIn.aspx";
                  break;
          }

           if (url != "") {
              
             // $("#IDcenterPane").attr('src',url);
              

          }//end url
          

        }
    </script>
    
    </form>
</body>
</html>
