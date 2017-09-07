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
			<th>Titre</th>
			<th>SIRET</th>
			<th>Prenom</th>
			<th>Nom</th>
			<th>Numero de telephone</th>
			<th>Numero de fax</th>
			<th>E-mail</th>
			<th>Rue</th>
			<th>Code Postal</th>
			<th>Ville</th>
			<th>Pays</th>


		</tr>
		<c:forEach items="${listeClient}" var="c">
			<tr>
				<c:choose>
					<c:when
						test="${c.getClass().name=='vol.metier.model.ClientMoral' }">
						<td>Client Moral</td>
						<td>${c.siret}</td>
						<td />
					</c:when>
					<c:when
						test="${c.getClass().name=='vol.metier.model.ClientPhysique' }">
						<td>Client Physique</td>
						<td />
						<td>${c.prenom}</td>
					</c:when>
					<c:when test="${c.getClass().name=='vol.metier.model.ClientEI' }">
						<td>Client EI</td>
						<td />
						<td>${c.prenom}</td>
					</c:when>
				</c:choose>
				<td>${c.nom}</td>
				<td>${c.numeroTel}</td>
				<td>${c.numeroFax}</td>
				<td>${c.email}</td>
				<td>${c.adresse.adresse}</td>
				<td>${c.adresse.codePostal}</td>
				<td>${c.adresse.ville}</td>
				<td>${c.adresse.pays}</td>
				<td><a href="./edit?id=${c.id}"><input type="button"
						value="modifier" /></a></td>
				<td><a href="./delete?id=${c.id}"><input type="button"
						value="supprimer" /></a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<br />
	<a href="./createClientMoral"><input type="button"
		value="nouveau client moral" /></a>
	<a href="./createClientPhysique"><input type="button"
		value="nouveau client physique" /></a>
	<a href="./createClientEI"><input type="button"
		value="nouveau client EI" /></a>
</body>
</html>