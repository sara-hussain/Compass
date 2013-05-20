<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MEC_LogIn.aspx.cs" Inherits="MECS.MEC_LogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <style type="text/css">
    body
    {background-color:#EAE9E1;
     text-align:center;
     vertical-align:middle;
     
	font-family:Verdana, Geneva, sans-serif,"Proxima Nova Rg" ;
	font-size:0.75em;
        }
#Content {
  
  margin-left: auto ;
  margin-right: auto ;
  background-color:#841911;
  width:300px;
  height:300px;
  margin-top:100px;
  color:White;
  border-style:solid;
  border-color:Silver;
  border-width:4px;
  
}
        .style1
        {
            width: 100%;
            text-align:left;
                   }
        .style2
        {
            width: 154px;
            text-align:left;
        }
        .style3
        {}
        .style4
        {
            width: 88px;
        }
    </style>
    <script src="Scripts/UIjs/jquery-1.7.2.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="LogIn" runat="server">
   
    <div id="Content"  >
       <h2>Coming Soon..</h2>
    <%-- RG - 5/15/2013 - Commented out page functionality for initial deployment  --%>
<%--    <br /><br /><br />
    Please login with your credentials 
     <br /> <br />
       <fieldset> 
       
        <table class="style1">
            
            <tr>
                <td class="style4">
                    User Name :</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxUID" runat="server" MaxLength="15" required 
                        title="User ID Required" height=".6cm" width="4cm"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Password :</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxPass" runat="server" MaxLength="20" required 
                        TextMode="Password" height=".6cm" width="4cm"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Domain :</td>
                <td class="style2">
                    <asp:DropDownList ID="DDListDomain" runat="server" Height=".7cm" 
                        width="4.1cm">
                        <asp:ListItem Value="BSDAD"></asp:ListItem>
                        <asp:ListItem Value="CNET"></asp:ListItem>
                        <asp:ListItem Value="URB-BD">URB-BD</asp:ListItem>
                    </asp:DropDownList>
                </td>
            
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td style="text-align:center">
                    <asp:Button ID="btn_LogIn" runat="server" onclick="btn_LogIn_Click" 
                        Text="Login" Height="29px" />
                </td>
                <td style="margin-left: 40px">
                   
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    <label id="LogInMessage">
                    </label>
                </td>
            </tr>
        </table>
       </fieldset>--%>
      
    </div>
    </form>

  <%--  <script type="text/javascript">

            $(document).ready(function () {
               
                /*
                $("#LogIn").submit( function () {
                return false;
                });  //end submit
                */

            }); //end ready
         

    
        function BtnLogIn_Click() {
            var ADUser = { UserID: "", Password: "", DomainName: "" };
            ADUser.UserID = $("#TextBoxUID").val();
            ADUser.Password = $("#TextBoxPass").val();
            ADUser.DomainName = $("#DDListDomain").val();
            $("#LogInMessage").text("");
            var AuthenMessage = "";
            if (document.getElementById("TextBoxUID").value != "" && document.getElementById("TextBoxPass").value != "") {


                $.ajax({
                    type: "POST",
                    url: "/WService/MEC_WS.asmx/ADAuthentication", async: false,
                    contentType: "application/json; charset=ut-8",
                    data: "{'User':'" + JSON.stringify(ADUser) + "'}",
                    dataType: "json",
                    success: function (data, b) {
                        AuthenMessage = data.d;
                        
                        //alert("ab");
                    },
                    error: function (a, b, c) { alert(c.toString()); }
                });              //end Ajax

            }

            if (AuthenMessage == "Success") {
                
                window.top.location = "MEC_App/MECAppHome.aspx";
            }
            else
                $("#LogInMessage").text(AuthenMessage);

        }

        function LogIn() {
            
        
        }
    </script>--%>
</body>
</html>
