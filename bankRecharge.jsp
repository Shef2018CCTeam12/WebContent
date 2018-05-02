<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ include  file="./checkLogin.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<head>
    <title>Sheffield CouldBase</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <%@ include  file="./mainJs_css.jsp"%>
        <script type="text/javascript">
            function req_recharge() {
                var amount = parseFloat(document.getElementById("amount").value);

                var ajax = new XMLHttpRequest();
                ajax.open("GET", "./Bank?Action=recharge&amount=" + amount, true);
                ajax.send();
                ajax.onreadystatechange = function () {
                    if (ajax.readyState == 4 && ajax.status == 200) {
                        var res = JSON.parse(ajax.response);
                        window.location.href = "./bankAccount.jsp";
                    }
                }
            }
        </script>
</head>

<body>
    <%@ include  file="./header.jsp"%>

        <div class="subtitle">
            <p>Recharge</p>
        </div>

        <div class="rechargeWorkplace">

            <div class="rechargeBackButton">
                <a href="./bankAccount.jsp">
                    <input type="button" value="Back" />
                </a>
            </div>
            <div class="rechargeImg">
                <img src="./images/recharge_pound.jpg" alt="this is a photo" height="500px" />
            </div>
            <div class="rechargeAmount">
                <input id="amount" type="text" placeholder="please enter the recharge amount" />
            </div>
            <div class="rechargeButton">
                <input type="button" value="Recharge" onclick="req_recharge()" />
            </div>
        </div>

        <%@ include  file="./footer.jsp"%>
</body>


</html>