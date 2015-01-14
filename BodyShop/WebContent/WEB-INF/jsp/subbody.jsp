<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products Page</title>
<c:url var="cssFile" value="/resources/css/style.css" />
<link href="${cssFile}" rel="stylesheet" type="text/css" />
</head>

<body id="man">
	
	<article class="item-L item-04"> <header> <hgroup>
		<h1 class="title">Choose Your Product</h1>
		<h2 class="subtitle"></h2>
		</hgroup>
		<div class="visual">
			<img class="visual_subcat-01"
				src="/resources/images/globe1.jpg"
				alt="main visual" title="main visual">
		</div>
</header>
</article>
	<div id="holder">
		<c:forEach items="${list}" var="list">
			<div class="item"><div class="hello" align="left"><a
					href=" <c:out value="prod/${list.prod_id}"/>"><p>${list.prod_name}</p></a></div>
				<c:url var="images" value="/resources/images/" />
				<a href=" <c:out value="prod/${list.prod_id}"/>"><img
					alt="thebodyshop" src="${images}${list.prod_id}.jpg" height="200px"
					width="200px" align="left"></a><a
							href="prod/${list.prod_id}"
							title="View all body butters" class="button-02">More Detail</a>
			</div>


		</c:forEach>
	</div>
	<div id="clearer"></div>
	<br>
	<br>
	<br>
	<br>
	
	

</body>
</html>