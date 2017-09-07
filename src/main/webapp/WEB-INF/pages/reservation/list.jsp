<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Liste des reservations</h1>
<table border="1">
<tr>
<th>id</th>
<th>date</th>
<th>numero</th>
<th>passager</th>
<th>vol</th>
</tr>
<c:forEach items="${liste }" var="p">
<tr>
<td>${p.id }</td>
<td>${p.date }</td>
<td>${p.numero }</td>
<td>${p.passager.nom }</td>
<td>${p.vol.id }</td>
</tr>
</c:forEach>
</table>

</body>
</html>