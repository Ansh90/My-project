<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile page</title>
<c:url var="cssFile" value="/resources/css/style.css" />
<link href="${cssFile}" rel="stylesheet" type="text/css" />
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>
	<%-- <center> --%>
		<!-- <h2>Profile Page</h2> -->
		<div class="vc_page_banner" style="height: 90px;">
			<header>
			<h2>Profile Home</h2>
			</header>
		 </div>
 <div class="prof_body">
		<form:form modelAttribute="log" method="post">
			<table width="590" border="0" cellspacing="2" cellpadding="2">
				<tbody><tr>
					<td>FirstName</td>
					<td>:</td>
					<td>${fName}</td>
				</tr>
				<tr>
					<td>LastName</td>
					<td>:</td>
					<td>${lName}</td>
				</tr>
				<tr>
					<td>UserName</td>
					<td>:</td>
					<td>${uName}</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td>${pass}</td>
				</tr>
				<tr>
					<td>DOB</td>
					<td>:</td>
					<td>${dob}</td>
				</tr>
				<tr>
					<td>Street</td>
					<td>:</td>
					<td>${street}</td>
				</tr>
				<tr>
					<td>City</td>
					<td>:</td>
					<td>${city}</td>
				</tr>
				<tr>
					<td>State</td>
					<td>:</td>
					<td>${state}</td>
				</tr>
				<tr>
					<td>Country</td>
					<td>:</td>
					<td>${country}</td>
				</tr>
				<tr>
					<td>Mob</td>
					<td>:</td>
					<td>${mob}</td>
				</tr></tbody>
			</table>
		</form:form>
<br><br></div>
<div class="prof_link">
		<h2>
			<a href="up.html">Edit Profile</a>
		</h2> </div>
	<%-- </center> --%>
</body>
</html>
<%-- <user:footer /> --%>