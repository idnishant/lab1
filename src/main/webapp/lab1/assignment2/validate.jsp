<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%-- todo 2: use el implicit object param to get request parameters- username and password

     todo 3: use c:set var="username" value="${param.username}" to variable set into session
--%>

<%--todo 2: use c:choose ,c:when c:otherwise to validate username is 'admin' and  password is 'admin'--%>
<c:choose>
    <c:when test="${param.username eq 'admin' && param.password eq 'admin'}">
        <%--todo 3: when username == admin use c:url and c:param to make url = "welcome.jsp?username=admin"--%>
         <c:url var="url" value="welcome.jsp">
            <c:param name="username" value="${param.username}"/>
        </c:url>
        <c:redirect url="${url}"/>
    </c:when>
<c:otherwise>
    <c:set var="message" value="Username Password Error" scope="request"/>
    <c:import url="login.jsp"/>
</c:otherwise>
    </c:choose>

    <%-- todo 4.2.use c:redirect to url= welcome.jsp?username=admin--%>
<%-- todo 5.: use c:otherwise else --%>
<%-- todo 5.1:use c:set to set a attribute name message="username password error" in request  --%>
<%--todo 5.2:use c:import to include login.jsp --%>
</body>
</html>
