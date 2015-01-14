<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>
	<center>
		<h2>
			Welcome to your Home Page
			<core:out value="${uName}" />
		</h2>
		<br>
		<br>
		<h2>
			<a href="/prof.html">MY PROFILE</a>
			<br><br><a href="<c:url value="/j_spring_security_logout" />" > LOGOUT</a>	
		</h2>
	</center>
</body>
</html>