<%--
  Created by IntelliJ IDEA.
  User: Ecenta
  Date: 11/4/2018
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<title>Band Details</title>
<body>
<h1>Band Details</h1>
Band Details for ${band.name}
<p>${band.description}</p>
<p>Music type:</p>
<ul>
    <c:forEach var="genre" items="${band.genres}">
        <li>${genre}</li>
    </c:forEach>
</ul>
<p>Tour History:</p>
<ul>
    <c:forEach var="tour" items="${band.tours}">
        <li><a href="../tours/${tour.id}">${tour.tourName}</a>(number of concerts: ${tour.numberOfConcerts})</li>
    </c:forEach>
</ul>
<a href="../bands">Back to Band List</a>
</body>
</html>
