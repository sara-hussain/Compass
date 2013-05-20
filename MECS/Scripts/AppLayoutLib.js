/// <reference path="UIjs/jquery-1.7.2.min.js" />


// To Resize the Iframe height as full Content

function ResizeFrame(iFrameID) {


    var FHeight;
    // var FWidth;
    var theObj;
    theObj = document.getElementById(iFrameID);

    if (navigator.userAgent.indexOf("Firefox") != -1) // For FireFox Only
        FHeight = theObj.contentWindow.document.documentElement.offsetHeight
    else
        FHeight = theObj.contentWindow.document.body.scrollHeight;

    theObj.height = FHeight;
    
} // ResizeFrame

function RefreshContentForUL(URL) {
   

    $("#TheContentFrame").attr('src', URL);
}
function mnuView(mnuName) {

    var mnu;

    mnu = document.getElementById(mnuName); ;

    mnu.style.display = (mnu.style.display != 'none' ? 'none' : 'block');
    
    
    if (mnu.style.display == 'block')
        document.getElementById('mainContent').style.width = '80%';
    else
        document.getElementById('mainContent').style.width = '98%';
    
 //el.style.display = (el.style.display != 'none' ? 'none' : '' );       
}