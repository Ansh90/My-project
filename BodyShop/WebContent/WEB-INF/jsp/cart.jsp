<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add To Cart Page</title>

<c:url var="cssFile" value="/resources/css/style.css" />
<link href="${cssFile}" rel="stylesheet" type="text/css" />
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>
	<center>
		<div class="vc_page_banner" style="height: 50px;">
			<header>
			<h2>SELECTED PRODUCT DETAILS...</h2>
			</header>

		</div>

	</center>


	<center>
		<table cellpadding="15">
			<tr>
				<th><b>Selected Quantity</b></th>
				<th><b> Product Name</b></th>
				<th></th>
				<th><b> Product Price </b></th>
				<th><b>Total Price </b></th>
				
			</tr>
			<c:forEach items="${list}" var="list1">
			<%
				if ((Integer) session.getAttribute("stock") <= (Integer) session
						.getAttribute("q")) {
			%>
			<div style="text-align: center">
				<h2>
					<font color="red"><b>Sorry due to Shortage of Stock,
							Your Quantity and Total Price is reduced...</b></font>
				</h2>

			</div>
			<tr>
				<td align="center">${list1.prod_stock}</td>
				<td align="center">${list1.prod_name}</td>

						
						<td></td>
						<td align="center">${list1.prod_price}</td>

						<td align="center">${list1.quantity*list1.prod_price}</td>
				<%
					} else {
				%> 

				<!-- <td><b>Selected Quantity</b></td> <td><b> Product Name </b></td> <td><b>
						Product Price </b></td><td><b>Total Price </b></td></tr> -->


				<%-- <%
					}
				%> --%>
				



					<tr>
						<td align="center">${list1.quantity}</td>

						<td align="center">${list1.prod_name}</td>

						<%-- <b>Selected Quantity:</b> ${quan}
	<br> --%>
						<%-- <td align="center"><c:url var="images" value="/resources/images/" />
					<a href="#" alt="thebodyshop"><img alt="thebodyshop"
						src="${images}${list1.prod_id}.jpg" height="100px" width="100px"
						align="right"></a> </td> --%>
						<td></td>
						<td align="center">${list1.prod_price}</td>

						<td align="center">${list1.quantity*list1.prod_price}</td>
					</tr>
 <%
					}
				%>
				</c:forEach>
		</table>
	</center>


	<br>
	<br>
	<form action="/place1">
		<center>
			<table align="center">
				<tr>
					<td colspan="4"><input type="submit" value="Place Order"
						class="button-01" /></td>
				</tr>
			</table>
		</center>
	</form>
	<%-- <%
		if ((String) session.getAttribute("uName") == null) {
	%>
	<form:form action="/place" method="get" modelAttribute="newUser">

		<center>
			<form:label path="nUser">Enter Name Here:</form:label>
			<form:input path="nUser" />
			<font color="red"><form:errors path="nUser" /></font><br> <br>

			<form:label path="street">Enter Street Here:</form:label>
			<form:input path="street" />
			<font color="red"><form:errors path="street" /></font><br> <br>

			<form:label path="city">Enter City Here:</form:label>
			<form:input path="city" />
			<font color="red"><form:errors path="city" /></font><br> <br>

			<form:label path="state">Enter State Here:</form:label>
			<form:input path="state" />
			<font color="red"><form:errors path="state" /></font><br> <br>

			<form:label path="country">Enter Country Here:</form:label>
			<form:input path="country" />
			<font color="red"><form:errors path="country" /></font><br> <br>

			<form:label path="mob">Enter Mobile Here:</form:label>
			<form:input path="mob" />
			<font color="red"><form:errors path="mob" /></font><br> <br>
		</center>
		<br>
		<center>
			<input type="submit" value="Place Order" />
		</center>
	</form:form>
	<%
		} else {
	%>
	<form action="/place1">
		<table>
			<tr>
				<td colspan="4">
					<center>
						<input type="submit" value="Place Order" />
					</center>
				</td>
			</tr>
		</table>
	</form>
	<%
		}
	%> --%>
</body>
</html>
<%-- <user:footer /> --%>