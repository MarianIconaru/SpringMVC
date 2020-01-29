<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style>
div.link {
	margin: 15px 0px 15px 25px;
	
}

div.link a {
	color:white;
	font-size:0.6em;
	text-decoration:none;
	background-color:darkgreen;
	border-radius:5px;
	padding:8px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Succes</title>
<style>
* {
	background-color: gray;
	padding: 0;
	margin: 0;
}

div {
	font-size: 2em;
	color: darkgreen;
	margin: 25px;
}
</style>
</head>
<body>
	<div class="container">${success}</div>
	<div class="link">
		<a href="<c:url value='/wards' />">Back To Ward List</a>
	</div>
</body>

</html>