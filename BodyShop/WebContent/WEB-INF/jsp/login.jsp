<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>

<c:url var="cssFile" value="/resources/css/style.css" />
<link href="${cssFile}" rel="stylesheet" type="text/css" />
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	width:350px;
	margin-left:150px;
	margin-bottom: 25px;
	
}
</style>
</head>

<body onload='document.f.j_username.focus();'>
	<%-- <user:header />
	<user:nav /> --%>

		<div class="vc_page_banner" style="height: 50px;">
			<header>
			<h2>login</h2>
			</header>

		</div>
		<c:if test="${not empty error}">
			<div class="errorblock">
				<font color="red"> Your login attempt was not successful, try
					again.<br /> Caused :
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
				</font>
			</div>
		</c:if>


		<%-- 	<form name='f' action="<c:url value='j_spring_security_check' />"
				method='POST'>
 --%><div class="log_body">
		<form name='f' action="<c:url value='/j_spring_security_check' />"
			method='POST'>

			<table>
				<tr>
				<td>Previously registered?</td></tr>
				<tr>
				<td>Please sign in with your details to proceed.</td></tr>
					<tr><td><div style="margin-top:30px;">Email Address</div></td></tr>
					<tr><td><input type='text' name='j_username' value=''></td>
				</tr>
				<tr>
					<td>Password</td></tr>
				<tr>	<td><input type='password' name='j_password' /></td>
				</tr>
				
				<tr>	 <td align="left"><div style="margin-top:30px;"><input name="submit"
						type="submit" value="Login" class="button-01" /></div></td> 
				</tr>	
				<tr>
					<td colspan="4"><div style="margin-top:30px;"><a href="/register.html">NEW
							USER REGISTRATION</a></div></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>