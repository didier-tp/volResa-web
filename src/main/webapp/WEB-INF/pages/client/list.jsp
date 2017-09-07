<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>liste des clients en base</h1>
	<table border="1">

		<tr>
			<th>nom</th>
			<th>numero de telephone</th>
			<th>numero de fax</th>
			<th>email</th>


		</tr>
		<c:forEach items="${listeClient}" var="c">
			<td>${c.nom}</td>
			<td>${c.numeroTel}</td>
			<td>${c.numeroFax}</td>
			<td>${c.email}</td>
			<td><a href="./edit?id=${c.id}"><input type="button"
					value="modifier" /></a></td>
			<td><a href="./delete?id=${c.id}"><input type="button"
					value="supprimer" /></a></td>
		</c:forEach>
	</table>
	<br />
	<br />
	<a href="./createClient"><input type="button"
		value="nouveau client" /></a>
</body>
</html>