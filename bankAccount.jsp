<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ include  file="./checkLogin.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sheffield CouldBase</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <%@ include  file="./mainJs_css.jsp"%>
    <script type="text/javascript">
        function req_balance() {
            var ajax = new XMLHttpRequest();
            ajax.open("GET", "./Bank?Action=info", true);
            ajax.send();
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var res = JSON.parse(ajax.response);

                    document.getElementById("username").innerHTML = res.Name;
                    document.getElementById("peanutpoint").innerHTML = (res.Result ? res.Balance : "N/A");
                }
            }
        }
    </script>
</head>

<body onload="req_balance()">
    <%@ include  file="./header.jsp"%>
    <div class="subtitle">
        <p>Account Information</p>
    </div>
    <div class="peanut">
        <div class="peanutUsernameTitle">Username :</div>
        <div id="username" class="peanutUsername"><i style="color: gray">Pending...</i></div>
        <div class="peanutTitle">Peanut Point :</div>
        <div class="peanutPoint">
            <span id="peanutpoint"><i style="color: gray">Pending...</i></span>
            <span>&nbsp;pt</span>
        </div>

        <div class="peanutButtonList">
            <div class="peanutPointDetail">
                <a href="./bankTransactions.jsp">
                    <input type="button" value="Details">
                </a>
            </div>
            <div class="peanutPointTop">
                <a href="./bankRecharge.jsp">
                    <input type="button" value="Recharge">
                </a>
            </div>
        </div>
    </div>
    <%@ include  file="./footer.jsp"%>
</body>


</html>