<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*"%>
<%@page language="java" import="com.innominds.controller.*"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SubCategory Page</title>

<c:url var="cssFile" value="/resources/css/style.css" />
<link href="${cssFile}" rel="stylesheet" type="text/css" />
</head>

<body id="man">

	<article class="item-L item-04"> <header> <hgroup>
	<h1 class="title">Choose From Below</h1>
	<h2 class="subtitle"></h2>
	</hgroup>
	<div class="visual">
		<img class="visual_subcat-01" src="/resources/images/cat_19.jpg"
			alt="main visual" title="main visual">
	</div>
	</header> </article>
	<div id="holder">
		<c:forEach items="${list}" var="list">
			<div class="item">
				<div align="left">
					<a href=" <c:out value="subcat/${list.scat_id}"/>"><p>${list.scat_name}</p></a>
				</div>
				<c:url var="images" value="/resources/images/" />
				<a href=" <c:out value="subcat/${list.scat_id}"/>"><img
					alt="thebodyshop" src="${images}${list.scat_id}.jpg" height="200px"
					width="200px" align="left"></a><a href="subcat/${list.scat_id}"
					title="View all body butters" class="button-01">View all</a>
			</div>
		</c:forEach>
	</div>
	<div id="clearer"></div>
	<br>
	<br>


	<%-- <table>

		<tr><td></td><td></td><td></td><td></td>
			<c:forEach items="${list}" var="list">
			<td><c:url var="images" value="/resources/images/" /> <a
					href=" <c:out value="subcat/${list.scat_id}"/>"><img
						alt="thebodyshop" src="${images}${list.scat_id}.jpg"
						height="200px" width="200px" align="middle"></a></td>
				<td><h2>
						<a href=" <c:out value="subcat/${list.scat_id}"/>">${list.scat_name}</a>
					</h2></td>
				 <td></td>
				<td></td>
			</c:forEach>
		</tr> </table>
 --%>
</body>
</html>
