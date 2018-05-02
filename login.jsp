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
            <p>Login</p>
        </div>
        <div class="login">
            <div class="login-img">
                <img src="./images/CloudComputing.png" alt="it is a image">
            </div>
            <div class='respond'>Username or password input error !!!</div>
            <div class="login-username">
                <input type="txt" id="Username" placeholder="Username">
            </div>
            <div class="login-password">
                <input type="password" id="Password" placeholder="Password">
            </div>
            <div class="login-valid">
                <input type="text" id="input" placeholder="Valid code" /> </div>
            <div class="login-validimg">
                <input type="button" id="code" onclick="createCode()" />
            </div>
            <div class="login-button">
                <input type="button" id="loginButton" value="Login" onclick="validate()" />
            </div>
            <div class="register-button">
                <input type="button" id="registerButton" value="Register" onclick="javascrtpt:window.location.href='register.jsp'">
            </div>
    
        </div>


        <%@ include  file="./footer.jsp"%>
    </body>
    

    </html>