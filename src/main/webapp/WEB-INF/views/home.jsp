<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style>
* {
	background-color: gray;
	padding: 0;
	margin: 0;
}

ul li:hover a {
	color: darkgray;
	-webkit-transition: all 0.3s ease-in;
	-moz-transition: all 0.3s ease-in
}

ul li {
	float: left;
	display: block;
	margin: 10px 5px 0px 10px;
}

ul {
	text-align: center;
	vertical-align:center;
}

ul li a {
	text-decoration: none;
	font-size: 1.3em;
	color:black;
}
</style>
</head>
<body>
	<ul>
		<li><a href="<c:url value='/patients' />">${patients}</a></li>

		<li><a href="<c:url value='/doctors' />">${doctors}</a></li>

		<li><a href="<c:url value='/nurses' />">${nurse}</a></li>
		<li><a href="<c:url value='/wards' />">${wards}</a></li>
		<li><a href="<c:url value='/drivers' />">${drivers}</a></li>
	</ul>
</body>
</html>
