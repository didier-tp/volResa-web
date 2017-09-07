<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Passagers</title>
</head>

<body>
	<h1>liste des passagers</h1>
	<table border="1">
		<tr>
			<th>nom</th>
			<th>prenom</th>
			<th>adresse</th>
			<th>code postal</th>
			<th>ville</th>
			<th>pays</th>
			<th>liste des reservations</th>
		</tr>
		<c:forEach items="${listePassager}" var="p">
			<td>${p.nom}</td>
			<td>${p.prenom}</td>
			<td>${p.adresse.adresse}</td>
			<td>${p.adresse.codePostal}</td>
			<td>${p.adresse.ville}</td>
			<td>${p.adresse.pays}</td>
			<td><a href="./listeReservation?id=${p.id}"><input type="button"
					value="listeReservation" /></a></td>
			<td><a href="./edit?id=${c.id}"><input type="button"
					value="modifier" /></a></td>
			<td><a href="./delete?id=${c.id}"><input type="button"
					value="supprimer" /></a></td>
		</c:forEach>
	</table>
	<br />
	<br />
	<a href="./createPassager"><input type="button"
		value="nouveau passager" /></a>
</body>

</html>