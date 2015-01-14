<%@page import="com.innominds.model.ProductDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add To Cart Page</title>

<c:url var="cssFile" value="/resources/css/style.css"/>
<link href="${cssFile}" rel="stylesheet" type="text/css"/>
</head>

<body id="man">
	<%-- <user:header />
	<user:nav /> --%>
	<center>
		<h2>SELECTED PRODUCT DETAILS...</h2>
	</center>

				<%
				List list=(List)session.getAttribute("list1");
				Iterator itr=list.iterator();
				while(itr.hasNext()){
					ArrayList obj=(ArrayList)itr.next();
					out.println(obj);

                 Iterator itr2=obj.iterator();
                 while(itr2.hasNext()){
                	 ProductDetail pd=(ProductDetail)itr2.next();
                	 out.println(pd);
                	 out.println(pd.getProd_desc());
                	 out.println(pd.getProd_id());
                	 
                	 
                	 
                 }
					
				}
					
				%>
				
                  <c:forEach items="${list}" var="list1">
			

				<c:out value="list1"/>

		
				</c:forEach>

		