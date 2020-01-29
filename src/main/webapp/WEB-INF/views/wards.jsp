<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<style>
h2 {
	margin: 5px;
	text-align: center;
	vertical-align: center;
	text-align: center;
}

* {
	background-color: gray;
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
	font-size: 1em;
	color: black;
}

.btn1 {
	margin-left: 3em;
	padding: 5px 10px 5px 10px;
	background-color: darkgreen;
	border-radius: 5px;
}

.btn2 {
	padding: 5px;
	background: rgba(255, 0, 0, 0.8);
	border-radius: 5px;
}

.add {
	margin: 15px 0px 15px 290px;
}

.add a {
	padding: 10px;
	background-color: black;
	border-radius: 5px;
	padding: 10px;
	color: white;
}

table {
	margin-left: auto;
	margin-right: auto;
}

th {
	padding: 7px;
	text-align: center;
	font-size: 1.3em;
}

tbody {
	border-radius: 10px;
}

tr:first-child td:first-child {
	border-top-left-radius: 10px;
}

tr:first-child td:last-child {
	border-top-right-radius: 10px;
}

tbody tr:nth-child(even) td {
	background-color: rgb(102, 102, 102);
}

td {
	text-align: center;
	margin: 10px;
	padding: 10px;
	background-color: rgb(75, 76, 82);
}
</style>
</head>

<body>
	<div class="container">
		<div class="container">

			<h2>List of Wards</h2>

			<table cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Salary</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${wards}" var="ward">
						<tr>
							<td>${ward.getFirstName()}</td>
							<td>${ward.lastName}</td>
							<td>${ward.email}</td>
							<td>${ward.phone}</td>
							<td>${ward.salary}</td>
							<td><a href="<c:url value='/editward${ward.id}' />"
								class="btn1">edit</a></td>
							<td><a href="<c:url value='/deleteward${ward.id}' />"
								class="btn2">delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="add">
			<a href="<c:url value='/newward' />">Add New Ward</a>
		</div>
	</div>
</body>
</html>