<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>

	<div class="vc_page_banner" style="height:50px;">
				              			<header>
				              			<h2>Sign Up</h2>
				              			</header>

			              			</div>
			              			<div class="clear" style="padding-bottom:5px; margin-bottom:20px; margin-left:140px ; margin-top:0px; border-bottom:1px solid #ccc;"></div>
	<div class="reg_body">
		<form:form method="post" action="addUser.html" modelAttribute="log">
			<table width="590" border="0" cellspacing="2" cellpadding="2"><tbody>
				<tr>
					<td>FirstName</td>
					<td>:</td>
					<td><form:input path="firstName" /></td>
					<td><font color="red"><form:errors path="firstName" /></font></td>
				</tr>
				<tr>
					<td>LastName</td>
					<td>:</td>
					<td><form:input path="lastName" /></td>
					<td><font color="red"><form:errors path="lastName" /></font></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td>:</td>
					<td><form:input path="userName" /></td>
					<td><font color="red"><form:errors path="userName" /></font></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td><form:password path="password" /></td>
					<td><font color="red"><form:errors path="password" /></font></td>
				</tr>
				<tr>
					<td>DOB</td>
					<td>:</td>
					<td><form:input path="dob" /></td>
					<td><font color="red"><form:errors path="dob" /></font></td>
				</tr>
				<tr>
					<td>Street</td>
					<td>:</td>
					<td><form:input path="street" /></td>
					<td><font color="red"><form:errors path="street" /></font></td>
				</tr>
				<tr>
					<td>City</td>
					<td>:</td>
					<td><form:input path="city" /></td>
					<td><font color="red"><form:errors path="city" /></font></td>
				</tr>
				<tr>
					<td>State</td>
					<td>:</td>
					<td><form:input path="state" /></td>
					<td><font color="red"><form:errors path="state" /></font></td>
				</tr>
				<tr>
					<td>Country</td>
					<td>:</td>
					<td><form:input path="country" /></td>
					<td><font color="red"><form:errors path="country" /></font></td>
				</tr>
				<tr>
					<td>Mob</td>
					<td>:</td>
					<td><form:input path="mob" /></td>
					<td><font color="red"><form:errors path="mob" /></font></td>
				<tr>
					<td><div style="margin-top:30px; "><input type="submit" value="Register" class="button-01" /></div></td>
				</tr>
			</tbody></table>
		</form:form>
	</div>
</body>
</html>
<%-- <user:footer /> --%>