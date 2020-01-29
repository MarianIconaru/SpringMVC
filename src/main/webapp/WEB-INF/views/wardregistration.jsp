<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ward Registration</title>
<style>
* {
	background-color: gray;
	padding: 0;
	margin: 0;
}

h3 {
	margin: 20px 0px 10px 100px;
}

div {
	padding: 10px;
}

.container {
	width: 300px;
	clear: both;
}

.container input {
	width: 100%;
}

#register {
	width: 100px;
	margin-top: 10px;
	background-color: black;
	border-radius: 5px;
	padding-top: 10px;
	padding-bottom: 10px;
	color: white;
	background-color: darkgreen;
	margin-top: 10px;
}
</style>
</head>
<body>
	<h3>Ward registration form.</h3>
	<div class="container">
		<form:form method="POST" modelAttribute="ward">
			<form:input type="hidden" path="id" id="id" />

			<div class="row">
				<label for="firstName">First Name</label>
				<form:input type="text" path="firstName" id="firstName" />
				<form:errors path="firstName" />
			</div>
			<div class="row">
				<label for="lastName">Last Name</label>
				<form:input type="text" path="lastName" id="lastName" />
				<form:errors path="lastName" />
			</div>
			<div class="row">
				<label for="phone">Phone</label>
				<form:input type="text" path="phone" id="phone" />
				<form:errors path="Phone" />
			</div>
			<div class="row">
				<label for="email">Email</label>
				<form:input type="text" path="email" id="email" />
				<form:errors path="email" />
			</div>
			<div>
				<label for="salary">Salary</label>
				<form:input type="decimal" step="any" path="salary" id="salary" />
				<form:errors path="salary" />
			</div>

			<form:input type="hidden" path="address.id" id="addressid" />

			<div>
				<label for="address.street">Street</label>
				<form:input type="text" path="address.street" id="street" />
				<form:errors path="address.street" />
			</div>
			<div>
				<label for="address.postal_code">Postal Code</label>
				<form:input type="text" path="address.postal_code" id="postalcode" />
				<form:errors path="address.postal_code" />
			</div>
			<div>
				<label for="address.houseNumber">House Number</label>
				<form:input type="text" path="address.houseNumber" id="houseNumber" />
			</div>
			<div>
				<label for="address.apartmentNumber">Apartment Number</label>
				<form:input type="text" path="address.apartmentNumber"
					id="apartmentNumber" />
			</div>
			<div>
				<label for="address.city">City</label>
				<form:input type="text" path="address.city" id="city" />
				<form:errors path="address.city" />
			</div>
			<div>
				<label for="address.country">Country</label>
				<form:input type="text" path="address.country" id="country" />
				<form:errors path="address.country" />
			</div>
			<c:choose>
				<c:when test="${edit}">
					<input id="register" type="submit" value="Update" />
				</c:when>
				<c:otherwise>
					<input id="register" type="submit" value="Register" />
				</c:otherwise>
			</c:choose>
		</form:form>
	</div>

</body>

</html>