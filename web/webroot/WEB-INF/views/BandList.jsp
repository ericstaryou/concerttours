<%--
  Created by IntelliJ IDEA.
  User: Ecenta
  Date: 11/4/2018
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<title>Band List</title>
<body>
<h1>Band List</h1>
<ul>                                <!--key-->
    <c:forEach var="band" items="${bands}">
        <li><a href="./bands/${band.id}">${band.name}</a></li>
    </c:forEach>
</ul>
</body>
</html>