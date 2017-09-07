<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<form:form action="./save" method="post" modelAttribute="passager">
		<form:label path="nom">Nom :</form:label>
		<form:input path="nom"/>
		<br />
		<form:label path="prenom">Prenom :</form:label>
		<form:input path="prenom"/>
		<br />
		<form:label path="adresse.adresse">Adresse :</form:label>
		<form:input path="adresse.adresse"/>
		<br />
		<form:label path="adresse.codePostal">Code Postal :</form:label>
		<form:input path="adresse.codePostal"/>
		<br />
		<form:label path="adresse.ville">Ville :</form:label>
		<form:input path="adresse.ville"/>
		<br />
		<form:label path="adresse.pays">Pays :</form:label>
		<form:input path="adresse.pays"/>
		<br />
		<input type="submit" value="Envoyer" />
		<br />
	</form:form>
	</table>
</body>
</html>