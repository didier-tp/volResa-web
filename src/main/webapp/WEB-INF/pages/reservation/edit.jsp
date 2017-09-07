<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>edit des données</h1>
<table>
<form:form modelAttribute="uneResa" action="./save">
<form:hidden path="version" />
<form:hidden path="id" />

			<tr>
				<td><form:label path="numero"> numero:</form:label></td>
				<td><form:input path="numero" /></td>
				<td><form:errors path="numero"></form:errors></td>
			</tr>
			
			<tr>
				<td><form:label path="client.id"> client:</form:label></td>
				<td><form:select path="client.id" items="${ clients}" itemValue="id" itemLabel="nom" ></form:select></td>
				<td><form:errors path="client.id"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="passager.id"> passager:</form:label></td>
				<td><form:select path="passager.id" items="${ passagers}" itemValue="id" itemLabel="nom" ></form:select></td>
				<td><form:errors path="passager.id"></form:errors></td>
			</tr>
			<tr>
				<td colspan='3'><input type="submit" value="envoyer" /></td>
			</tr>
</form:form>
</table>
</body>
</html>