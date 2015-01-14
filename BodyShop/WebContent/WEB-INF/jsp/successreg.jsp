<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successful Registration Page</title>
<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
<%-- <user:header/>
<user:nav/> --%>
<center>
<h2>Successfully Registered...</h2><br><br>
<h2><a href="returnlogin.html">Back to Login Page</a></h2>
</center>
</body>
</html>
<%-- <user:footer/> --%>