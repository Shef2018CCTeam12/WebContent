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
        function appSwitch(ID,SW){
            var ajax = new XMLHttpRequest();
            ajax.open("GET", "./Apps?Action=switch&ID="+ID+"&SW="+SW, true);
            ajax.send();
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var res = JSON.parse(ajax.response);
                    if(!res.Result)
                        alert("An error occured");
                    window.location.replace("./admin.jsp");
                }
            }
        }
    </script>
</head>

<body>
    <%@ include  file="./header.jsp"%>
    <div class="subtitle">
        <p>Admin</p>
    </div>

    <div class="adminWorkplace">
            <%
            DBconn conn;
            DBconn.RES res;
            try {
                conn=new DBconn("cloudplatform");
                if(!conn.isConnected())
                    throw(conn.errInfo());
                
                res=conn.query("SELECT * FROM apps");
                if(DBconn.STATE.OK == res.state){
                    if(res.result.next()) {
            %>
                    <div class="adminAppdetails">
                        <div class="adminImg"><img src="./images/appicon/<%=res.result.getString("Icon")%>" alt="Cloud Computing"></div>
                        <div class="adminAppNameTitle">App Name&nbsp;:&nbsp;</div>
                        <div class="adminAppName"><%=res.result.getString("Name")%></div>
                        <div class="adminAppProviderTitle">Provider User&nbsp;:&nbsp;</div>
                        <div class="adminAppProvider"><%=res.result.getInt("Provider")%></div>
                        <div class="adminOff">
                            <%if(res.result.getInt("Open")==1) {%>
                            <input type="button" value="Off" onclick="appSwitch(<%=res.result.getInt("Provider")%>,0)" />
                            <%}%>
                        </div>

                        <div class="adminOn">
                            <%if(res.result.getInt("Open")==0) {%>
                            <input type="button" value="On" onclick="appSwitch(<%=res.result.getInt("Provider")%>,1)" />
                            <%}%>
                        </div>
                        <div class="adminDescriptionTitle">App Description&nbsp;:&nbsp;</div>
                        <div class="adminDescription"><p><%=res.result.getString("Description")%></p></div>
                    </div>
            <%
                    }
                }
                else
                    throw(conn.errInfo());
            } catch (Exception e) {
            }

            %>
    </div>

    
    <%@ include  file="./footer.jsp"%>
</body>


</html>