<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="UpdateStudentData.css">
<style type="text/css">
</style>

</head>
<body>
	<div class="fixed-header">
		<div class="navbar">
			<a href="Menu.jsp">Home</a> 
			<a href="#news">About us</a>
			<div class="dropdown">
				<button class="dropbtn">
					Servies <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="Addstudent.jsp">Add Student</a> <a
						href="GetStudentServlet">Show all Student</a> <a
						href="GetStudentCourseServlet">Show all Student Course</a>

				</div>
			</div>
			<a href="LogOutServlet">Logout</a>
		</div>

	</div>
	<button>
		<a href="GetStudentServlet">BACK</a>
	</button>


	<div class="wrapper">
		<div class="title">
			Update Student
			<form action="EditStudentServlet" method="post">
		</div>
		<div class="form">
			<div class="inputfield">
				<label></label> <input type="hidden" class="input" name="sid"
					value='<c:out value="${student.sid}" />'>
			</div>
			<div class="inputfield">
				<label>First Name</label> <input type="text" class="input"
					name="FirstName" value='<c:out value="${student.firstName}" />'>
			</div>
			<div class="inputfield">
				<label>Last Name</label> <input type="text" class="input"
					name="LastName" value='<c:out value="${student.lastName}" />'>
			</div>

			<div class="inputfield">
				<label>Gender</label>
				<div class="custom_select">
					<select name="gender" value='<c:out value="${student.gender}" />'>
						<option value="">Select</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="Others">Others</option>
					</select>
				</div>
			</div>

			<div class="inputfield">
				<label>Age</label> <input type="number" class="input" name="age"
					value='<c:out value="${student.age}" />'>
			</div>

			<div class="inputfield">
				<label>Email</label> <input type="email" class="input" name="email"
					value='<c:out value="${student.email}" />'>
			</div>

			<div class="inputfield">
				<label>Phone Number</label> <input type="number" class="input"
					name="phone" value='<c:out value="${student.phone}" />'>
			</div>
			<div class="inputfield">
				<label>Address</label> <input type="text" class="input"
					name="address" value='<c:out value="${student.address}" />'>
			</div>
			<div class="inputfield">
				<label>Date Of Join</label> <input type="date" class="input"
					name="dateofjoin" value='<c:out value="${student.dateOfJoin}" />'>
			</div>
			<div class="inputfield">
				<input type="submit" value="Update Student" class="btn">
			</div>
		</div>
		</form>
	</div>


	<div class="fixed-footer">
		<div class="container">Copyright &copy; 2022 My School</div>
	</div>

</body>
</html>