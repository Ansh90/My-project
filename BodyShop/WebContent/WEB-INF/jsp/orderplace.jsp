<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Placed Order</title>

<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>
	<center>
	<div class="vc_page_banner" style="height: 50px;">
			<header>
			<h2>ORDER PLACED...</h2>
			</header>

		</div>
		
	</center>
		<%-- <%

			if ((String)session.getAttribute("xUser")!= (String) session.getAttribute("nUser")) {
				System.out.println(session.getAttribute("nUser"));
		%>
			<div style="text-align: center">
			<h2>
				<font color="red"><b>YOUR PASSWORD IS YOUR USERNAME, VISIT AGAIN...</b></font>
			</h2>

		</div>
		<%} %>  --%>
		<b>Your Order Id:</b>${rInt}<br>
<%-- c:forEach items="${list}" var="list1">
	
	<b>Product Name:</b>${pname}<br>
	<b>Ordered Quantity:</b>${quan}<br>
	<b>Total Price: </b>${tot_price}<br>
	</c:forEach> --%>
</body>
</html>
<%-- <user:footer /> --%>