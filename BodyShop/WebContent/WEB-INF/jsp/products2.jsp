<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.lang.Integer"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details Page</title>
<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
<br><br>

	<%
				if ((Integer) session.getAttribute("q") != 0) {
					
			%><center>
				<div style="text-align: center">
				<h2>
					<font color="green"><b>PRODUCT IS ADDED TO THE CART</b></font>
				</h2>
			</div></center>
			<%}%>
	<c:forEach items="${list1}" var="list1">
		<form:form action="/cart/${list1.prod_id}" modelAttribute="quant">
		<br>
		<%-- <section class="gcol gcol2 specific-breadcrumb">
			<div class="gcols">

				<!-- BREADCRUMB -->
				<nav id="breadcrumb">
				<ul>
					<li><span></span><a href="/main.html">Home</a></li>
					<!-- <li><span></span><a href="/cat/2">GIFT</a></li>
					<li><span></span><a href="#">BATH &amp; BODY</a></li> -->
					<li class="active"><span></span> <c:out
							value="${list1.prod_name}" /></li>
				</ul>
				</nav>

			</div>
			</section> --%>

			<section class="gcol gcol2 content">

			<div class="gcols">
				<article class="item-L item-03">
				<div class="left">
					<c:url var="images" value="/resources/images/" />
					
					<a class="visual" href="#" title="quickshop"> <img
						class="product" src="${images}${list1.prod_id}.jpg"
						alt="product main view" title="Click for enlarged view">

					</a>

					<section class="product_views">
					<ul>
						<li class="product_selected-view"><a href="#"
							title="product thumbnail"><img
								src="${images}${list1.prod_id}.jpg" width="60"
								alt="product thumbnail" title="product thumbnail"></a></li>
					</ul>
					</section>
				</div>
				<div class="right">

					<h1 class="title">
						<c:out value="${list1.prod_name}" />
					</h1>
					<%
						if ((Integer) session.getAttribute("stock") == 0) {
					%>
					<div style="text-align: left">
						<h2>
							<font color="red"><b>Stock Not Available</b></font>
						</h2>
					</div>
					<%
						} else {
					%>
					<div style="text-align: left">
						<h2>
							<font color="green"><b>Stock Available</b></font>
						</h2>
					</div>

					<div class="note">

						<div class="user-info-request"></div>
					</div>

					<section class="order">
					<p class="title">Select a Variant</p>

					<div id="main-form">
						<div class="quantity">

							<p class="title">
								<form:label path="quantity">Quantity</form:label>
							</p>

							<form:select path="quantity">
								<form:option value="1">1</form:option>
								<form:option value="2">2</form:option>
								<form:option value="3">3</form:option>
								<form:option value="4">4</form:option>
								<form:option value="5">5</form:option>
								<form:option value="6">6</form:option>


							</form:select>

						</div>
						<div class="shade-type">
							<p class="title">Variant</p>
							<select class="shade-type-select" id="shade_id" name="shade_id"
								onchange="changeShadeStock(this.value)">

							</select>
						</div>
					</div>
					<div id="product-block">
						<div class="content">
							<div class="prices">
								<p class="title">Price</p>
								<p class="price new">Rs.
									<c:out value="${list1.prod_price}" />
								</p>
							</div>
							<div class="prices">
								<p class="title"></p>
								<p class="price new"></p>
							</div>
							<br> <span id="stock_enough" style="display: inline-block;">
								<font color="red"><form:errors path="quantity" /></font>  <input type="submit" value="BUY NOW" />

							</span> <span id="stock_not_enough" style="display: none;"> <a
								href="#"> <!--input class="button shop" type="submit" value="Out Of Stock!" /-->
							</a>
							</span>

						</div>

					</div>
					
					<%
						}
					%>
					
		</form:form>
	</c:forEach>
</body>
</html>