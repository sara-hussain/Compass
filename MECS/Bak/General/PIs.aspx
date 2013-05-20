<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PIs.aspx.cs" Inherits="WebApplication1.PIs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal Investigators</title>
    <link href="/Styles/StaticLayout.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <form id="form1" runat="server">
    <h1 class="title-h1">Principal Investigators</h1> 
    <div class="left-content">
     
   
 

<ul><li><a href="#" onmouseover='ShowPic("/image/Staff/Dr.HabibulAhsan.jpg")' onmouseout="HidePic()">Habibul Ahsan</a>, MD. is the Principal Investigator of the CMEC, Louis Block Professor of Epidemiology, Associate Director (population research) of the UCCCC and Director of the Center for Cancer Epidemiology 
and Prevention at the University of Chicago. He has studied cancer for over two decades.</li>
<li><a href="#" onmouseover='ShowPic("/image/Staff/MichelleLeBeau.jpg")' onmouseout="HidePic()">Michelle Le Beau</a>, PhD. is a Co-Principal Investigator of the CMEC and Professor of Medicine, Director of
 the UCCCC and Director of the Cancer Cytogenetics Laboratory.   She is an international leader in cancer cytogenetics
  and genetics.</li >
<li><a href="#" onmouseover='ShowPic("/image/Staff/Dr. Richard Schilsky.jpg")' onmouseout="HidePic()">Richard Schilsky</a>, MD is a Co-Principal Investigator of the CMEC and Professor of Medicine and Section Chief of
 Hematology/Oncology. He specializes in the treatment of gastrointestinal cancers and in the development of new cancer 
 treatments.</li></ul>
  
    </div> <!--End Left Content -->

        <div class="right-content" >
        <img id="PicContent" src=""   >
        <br />
        

    </div><!--End right Content -->
    </form>
    
<script type="text/javascript">
    var TheImg;
    TheImg = document.getElementById("PicContent");
    
    function ShowPic(Pic) {
       
        TheImg.src = Pic;
    

     //   document.getElementById("PicContent").src =  Pic;
    }
    function HidePic() {
            TheImg.src = "";
        
        }
</script>
</body>
</html>
