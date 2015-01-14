<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updation page</title>
<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>
	<%-- <center> --%>
		<!-- <h2>Profile Page</h2> -->
<div class="vc_page_banner" style="height:90px;">
				              			<header>
				              			<h2>Change Profile</h2></header></div>
				              			
		<form:form modelAttribute="log" action="update.html" method="post">
		<div class="prof_body">
			<table width="590" border="0" cellspacing="2" cellpadding="2"><tbody>
				<tr>
					<td>FirstName</td>
					<td>:</td>
					<td><form:input path="firstName" value="${fName}" /></td>
					<td><font color="red"><form:errors path="firstName" /></font></td>
				</tr>
				<tr>
					<td>LastName</td>
					<td>:</td>
					<td><form:input path="lastName" value="${lName}" /></td>
					<td><font color="red"><form:errors path="lastName" /></font></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td>:</td>
					<td><form:input path="userName" value="${uName}" /></td>
					<td><font color="red"><form:errors path="userName" /></font></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td><form:input path="password" value="${pass}" /></td>
					<td><font color="red"><form:errors path="password" /></font></td>
				</tr>
				<tr>
					<td>DOB</td>
					<td>:</td>
					<td><form:input path="dob" value="${dob}" /></td>
					<td><font color="red"><form:errors path="dob" /></font></td>
				</tr>
				<tr>
					<td>Street</td>
					<td>:</td>
					<td><form:input path="street" value="${street}" /></td>
					<td><font color="red"><form:errors path="street" /></font></td>
				</tr>
				<tr>
					<td>City</td>
					<td>:</td>
					<td><form:input path="city" value="${city}" /></td>
					<td><font color="red"><form:errors path="city" /></font></td>
				</tr>
				<tr>
					<td>State</td>
					<td>:</td>
					<td><form:input path="state" value="${state}" /></td>
					<td><font color="red"><form:errors path="state" /></font></td>
				</tr>
				<tr>
					<td>Country</td>
					<td>:</td>
					<td><form:input path="country" value="${country}" /></td>
					<td><font color="red"><form:errors path="country" /></font></td>
				</tr>
				<tr>
					<td>Mob</td>
					<td>:</td>
					<td><form:input path="mob" value="${mob}" /></td>
					<td><font color="red"><form:errors path="mob" /></font></td>
				</tr>

				<tr>
					<td colspan="2"><input name="simpan" type="submit" class="searchb" id="simpan" value="Submit" /></td>
				</tr></tbody>
			</table>
			</div>
		</form:form>
</body>
</html>