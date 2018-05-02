<%@ page import="com.group.UserSession" %>
<header role="banner">
    <nav role="navigation">
        <ul>
        <%
        UserSession userAdmin=(UserSession) request.getSession().getAttribute("UserInfo");
        boolean thisUserIsAdmin=false;
        if(userAdmin!=null )
            if(userAdmin.isAdmin())
                thisUserIsAdmin=true;
        
        if(thisUserIsAdmin){
        %>
            <li>
                <a href="./admin.jsp">Admin</a>
            </li>
        <%
        }
        %>
            <li class="current">
                <a href="./index.jsp">Home</a>
            </li>
            <li>
                <a id='login-button' href="./login.jsp">login</a>
            </li>
            <li>
                <a href="./bankAccount.jsp">Peanut</a>
            </li>
            <li>
                <a href="./about.jsp">About</a>
            </li>
            <li>
                <a href="./upload.jsp">Upload</a>
            </li>
        </ul>
    </nav>
</header>
<div class="intro">
    <div class="introItem">
        <div class="introPhoto">
            <a href="#">
                <img src="./images/CloudComputing.png" alt="Cloud Computing" height="100px">
            </a>
        </div>
        <div class="introDescription">
            <h2>Sheffield CloudBase(PaaS)</h2>
            By Team 12
        </div>
    </div>
</div>