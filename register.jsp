<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
    <!DOCTYPE html>
    <html lang="en" xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>Sheffield CouldBase</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <%@ include  file="./mainJs_css.jsp"%>
        <script type="text/javascript" src="./scripts/md5.js"></script>
        <script type="text/javascript" src="./scripts/checkCode.js"></script>

    </head>

    <body>
        <%@ include  file="./header.jsp"%>
        <div class="subtitle">
            <p>Register</p>
        </div>
    
        <div class="register">
            <div class="register-img">
                <img src="./images/CloudComputing.png" alt="it is a image">
            </div>
            <div class='respond'>Register input error !!!</div>
            <div class="register-username">
                <input type="txt" id="Username" placeholder="Username">
            </div>
            <div class="register-nickname">
                <input type="txt" id="Nickname" placeholder="Nickname">
            </div>
            <div class="register-password">
                <input type="password" id="register-password" placeholder="Password">
            </div>
            <div class="confirm-password">
                <input type="password" id="register-confirm-password" placeholder="Confirm password">
            </div>
            <div class="register-valid">
                <input type="text" id="input" placeholder="Valid code" /> </div>
            <div class="register-validimg">
                <input type="button" id="code" onclick="createCode()" />
            </div>
            <div class="in-register-button">
                <input type="button" id="loginButton" value="Register" onclick="register()" />
            </div>
        </div>

        <%@ include  file="./footer.jsp"%>
    </body>
    

    </html>