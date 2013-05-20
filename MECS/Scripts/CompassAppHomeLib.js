/// <reference path="UIjs/jquery-1.7.2.min.js" />

$(document).ready(function () {
    //$("body").layout();
    $('#container').layout({
        west__spacing_closed: 20
		    , west__togglerLength_closed: 100
		    , west__togglerAlign_closed: "top"
		    , west__togglerContent_closed: "M<BR>E<BR>N<BR>U"
		    , west__togglerTip_closed: "Open & Pin Menu"
		    , west__sliderTip: "Slide Open Menu"
		    , west__slideTrigger_open: "mouseover"
            , north__spacing_open: 0
            , south__spacing_open: 0
            , west__size: '220'
            , west__autoResize: true
            , north__size: 210






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
    $('#jqxNavigationBar').jqxNavigationBar('hideArrowAt', 5);
});    //End Ready

function RefreshContent(Index) {
    var url = "";

    switch (Index) {
        case 0:
            //url = "/General/StudySummary.aspx";
            break;
        case 1:
            //url = "/General/ResearchTeam.aspx";
            break;

        case 3:
            // url = "/General/ContactUs.aspx";
            break;
        case 4:
            // url = "Participant_LogIn.aspx";
            break;
        case 5:
            // url = "MEC_LogIn.aspx";
            break;
    }

    if (url != "") {


        $("#IDcenterPane").attr('src', url);


    } //end url


}


function RefreshContentForUL(URL) {


    $("#IDcenterPane").attr('src', URL);
}
  