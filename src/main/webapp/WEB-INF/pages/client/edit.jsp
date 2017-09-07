<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<c:choose>
			<c:when
				test="${client.getClass().name=='vol.metier.model.ClientMoral' }">
				<c:url var="url" value="./saveClientMoral"></c:url>
			</c:when>
			<c:when
				test="${client.getClass().name=='vol.metier.model.ClientPhysique' }">
				<c:url var="url" value="./saveClientPhysique"></c:url>
			</c:when>
			<c:when
				test="${client.getClass().name=='vol.metier.model.ClientEI' }">
				<c:url var="url" value="./saveClientEI"></c:url>
			</c:when>
		</c:choose>
		<form:form modelAttribute="client" action="${url}" method="POST">
			<form:hidden path="version" />
			<form:hidden path="id" />

			<c:choose>
				<c:when
					test="${client.getClass().name=='vol.metier.model.ClientMoral' }">
					<tr>
						<td><form:label path="titre">Titre:</form:label></td>
						<td><form:select path="titre" items="${civilitesMoral}"></form:select>
						<td><form:errors path="titre"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="siret">SIRET:</form:label></td>
						<td><form:input path="siret" /></td>
						<td><form:errors path="siret"></form:errors></td>
					</tr>
				</c:when>
				<c:when
					test="${client.getClass().name=='vol.metier.model.ClientPhysique' }">
					<tr>
						<td><form:label path="titre">Titre:</form:label></td>
						<td><form:select path="titre" items="${civilitesPhysique}"></form:select>
						<td><form:errors path="titre"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="prenom">Prenom:</form:label></td>
						<td><form:input path="prenom" /></td>
						<td><form:errors path="prenom"></form:errors></td>
					</tr>
				</c:when>
				<c:when
					test="${client.getClass().name=='vol.metier.model.ClientEI' }">
					<tr>
						<td><form:label path="titre">Titre:</form:label></td>
						<td><form:select path="titre" items="${civilitesPhysique}"></form:select>
						<td><form:errors path="titre"></form:errors></td>
					</tr>
					<tr>
						<td><form:label path="prenom">Prenom:</form:label></td>
						<td><form:input path="prenom" /></td>
						<td><form:errors path="prenom"></form:errors></td>
					</tr>
				</c:when>
			</c:choose>

			<tr>
				<td><form:label path="nom">Nom:</form:label></td>
				<td><form:input path="nom" /></td>
				<td><form:errors path="nom"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="numeroTel">Numero de telephone:</form:label></td>
				<td><form:input path="numeroTel" /></td>
				<td><form:errors path="numeroTel"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="numeroFax">Numero de telephone:</form:label></td>
				<td><form:input path="numeroFax" /></td>
				<td><form:errors path="numeroFax"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="email">E-mail:</form:label></td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="adresse.adresse">Rue:</form:label></td>
				<td><form:input path="adresse.adresse" /></td>
				<td><form:errors path="adresse.adresse"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="adresse.codePostal">Code Postal:</form:label></td>
				<td><form:input path="adresse.codePostal" /></td>
				<td><form:errors path="adresse.codePostal"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="adresse.ville">Ville:</form:label></td>
				<td><form:input path="adresse.ville" /></td>
				<td><form:errors path="adresse.ville"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="adresse.pays">Pays:</form:label></td>
				<td><form:input path="adresse.pays" /></td>
				<td><form:errors path="adresse.pays"></form:errors></td>
			</tr>

			<tr>
				<td colspan="3"><input type="submit" value="enregistrer"></td>
			</tr>
		</form:form>
	</table>
</body>
</html>