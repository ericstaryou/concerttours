<%--
  Created by IntelliJ IDEA.
  User: Ecenta
  Date: 11/4/2018
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<title>Tour Details</title>
<body>
<h1>Tour Details</h1>
Tour Details for ${tour.tourName}
<p>${tour.description}</p>
<p>Schedule:</p>
<table>
    <tr><th>Venue</th><th></th><th>Date</th><th>Days Until</th></tr>
    <c:forEach var="concert" items="${tour.concerts}">
        <tr><td>${concert.venue}</td><td>${concert.type}</td><td><fmt:formatDate pattern="dd MMM yyyy" value="${concert.date}" /></td><td>${concert.countDown}</td></tr>
    </c:forEach>
</table>
<a href="../bands">Back to Band List</a>
</body>
</html>
