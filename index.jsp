<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="com.group.DBconn"%>
<%@ include  file="./checkLogin.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sheffield CouldBase</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <%@ include  file="./mainJs_css.jsp"%>
    <script type="text/javascript">
        function entryCheck(ID,Cost){
            if(Cost>0)
                if(!confirm("It will cost "+Cost+" peanut points"))
                    return;

            var ajax = new XMLHttpRequest();
            ajax.open("GET", "./Apps?Action=access&ID="+ID, true);
            ajax.send();
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var res = JSON.parse(ajax.response);
                    if(res.Result)
                        window.location.href=res.Path;
                    else
                        alert("An error occured");
                }
            }
        }
    </script>
</head>

<body>
    <%@ include  file="./header.jsp"%>
    <div class="subtitle">
        <p>Application Tray</p>
    </div>

    <main role="main">
<%
DBconn conn;
DBconn.RES res;
try {
    conn=new DBconn("cloudplatform");
    if(!conn.isConnected())
        throw(conn.errInfo());
    
    res=conn.query("SELECT ID,Name,Description,Icon,Charge FROM apps WHERE Open=1");
    if(DBconn.STATE.OK == res.state){
        if(res.result.next()) {
%>
        <article>
            <div class="grid-area grid-area_tittle">
                <h1><%=res.result.getString("Name")%></h1>
            </div>
            <div class="grid-area grid-area_img">
                <a onclick="entryCheck(<%=res.result.getInt("ID")%>,<%=res.result.getFloat("Charge")%>)">
					<img src="./images/appicon/<%=res.result.getString("Icon")%>" alt="There is a img">
                </a>
            </div>
            <div class="grid-area grid-area_description">
                <p><%=res.result.getString("Description")%></p>
            </div>
        </article>

<%
        }
    }
    else
        throw(conn.errInfo());
} catch (Exception e) {
}

%>

    </main>
    <%@ include  file="./footer.jsp"%>
</body>
</html>