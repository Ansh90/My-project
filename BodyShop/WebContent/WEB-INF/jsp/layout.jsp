<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="style.tag" type="text/css"/> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>

<style>
	body {
		font-family: sans-serif, Arial;
	}
</style>
</head>
<body>

<table >
	<tr>
		<td ><tiles:insertAttribute name="header" />
		</td>
	</tr>
	<tr>
	<td><tiles:insertAttribute name="nav" /></td></tr>
		<%-- <td height="150" valign="top"><tiles:insertAttribute name="menu" /></td> --%>
	<tr>	<td><tiles:insertAttribute name="body" /></td></tr>
	
	<tr>
		<td ><tiles:insertAttribute name="footer" />
		</td>
	</tr>
</table>
</body>
</html>
