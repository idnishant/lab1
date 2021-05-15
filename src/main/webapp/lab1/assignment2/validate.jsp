<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>validate</title>
</head>
<body>
<%-- todo 2: use el implicit object param to get request parameters- username and password and
     todo 3: use c:set var="username" value="${param.username}" to set into variable
--%>
<%--todo 4: use c:choose ,c:when c:otherwise to validate username is "admin"  -->
<%--todo 4.1: when username == admin use c:url and c:param to make url = "welcome.jsp?username=admin"-->
<%-- todo 4.2.use c:redirect to url= welcome.jsp?username=admin--%>
<%-- todo 5.: use c:otherwise to include login.jsp -->
<%-- todo 5.1:use c:set to set a attribute name message="username password error" in a request  -->
<%--todo 5.2:use c:import to include login.jsp -->
</body>
</html>
