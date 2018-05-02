<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ include  file="./checkLogin.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Sheffield CouldBase</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <%@ include  file="./mainJs_css.jsp"%>
    <script type="text/javascript" src="./scripts/logout.js"></script>
    <script type="text/javascript">
        function req_transaction() {
            var ajax = new XMLHttpRequest();
            ajax.open("GET", "./Bank?Action=history", true);
            ajax.send();
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var res = JSON.parse(ajax.response);

                    if (res.Result) {
                        var objList = document.getElementById("list");

                        for (var i = 0; i < res.Records.length; i++) {
                            var rec = res.Records[i];

                            var htmlStr = "<div class=\"line\"><hr style=\"border:3 double #D1D1D1\" width=\"80%\" color=\"#D1D1D1\" SIZE=\"3\" /></div>";
                            htmlStr += "<div class=\"ItemRow\"><div class=\"peanutDetailsItem\">";
                            htmlStr += "<div class=\"peanutDetailsTimeTitle\">" + timeString(rec.Time) + "</div>";
                            htmlStr += "<div class=\"peanutDetailsInOutTitle\">" + (rec.Receive ? "In" : "Out") + "</div>";
                            htmlStr += "<div class=\"peanutDetailsAmountTitle\">" + rec.Amount + "</div>";
                            htmlStr += "<div class=\"peanutDetailsObjectTitle\">" + rec.TargetName + "</div>";
                            htmlStr += "<div class=\"peanutDetailsDescriptionTitle\">" + rec.Description + "</div>";
                            htmlStr += "</div></div>";

                            objList.innerHTML += htmlStr;
                        }
                    }
                }
            }
        }

        function timeString(inTime){
            var time = new Date();
            time.setTime(inTime * 1000);
            var timeStr = "";
            timeStr += time.getFullYear() + "-";
            if (time.getMonth() < 9)
                timeStr += "0";
            timeStr += (time.getMonth() + 1) + "-";
            if (time.getDate() < 10)
                timeStr += "0";
            timeStr += time.getDate() + " ";
            if (time.getHours() < 10)
                timeStr += "0";
            timeStr += time.getHours() + ":";
            if (time.getMinutes() < 10)
                timeStr += "0";
            timeStr += time.getMinutes() + ":";
            if (time.getSeconds() < 10)
                timeStr += "0";
            timeStr += time.getSeconds();

            return timeStr;
        }
    </script>
</head>

<body onload="req_transaction()">
    <%@ include  file="./header.jsp"%>
    <div class="subtitle">
        <p>Transation Details</p>
    </div>
    <div class="peanutDetailsList">
        <div class="peanutDetailsBackButton">
            <a href="./bankAccount.jsp">
                <input type="button" value="Back">
            </a>
        </div>
        <div class="titleRow">
            <div class="peanutDetailsTitle">
                <div class="peanutDetailsTimeTitle">Time</div>
                <div class="peanutDetailsInOutTitle">In/Out</div>
                <div class="peanutDetailsAmountTitle">Amount</div>
                <div class="peanutDetailsObjectTitle">Object</div>
                <div class="peanutDetailsDescriptionTitle">Description</div>
            </div>
        </div>

        <div id="list"></div>
    </div>

    <%@ include  file="./footer.jsp"%>
</body>
</html>