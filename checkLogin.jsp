<%@ page import="com.group.UserSession" %>
<%
UserSession usersession=(UserSession) request.getSession().getAttribute("UserInfo");
if(usersession==null) {
    response.sendRedirect("login.jsp");
}
%>