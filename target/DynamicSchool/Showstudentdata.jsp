<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>showData</title>
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Showstudentdata.css">
<style type="text/css">
</style>
</head>
<body>

	<div class="fixed-header">
		<div class="navbar">
			<a href="Menu.jsp">Home</a> <a href="#news">About us</a>
			<div class="dropdown">
				<button class="dropbtn">
					Servies <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="AddStudentServlet">Add Student</a> <a
						href="GetStudentServlet">Show all Student</a> <a
						href="GetStudentCourseServlet">Show all Student Course</a>

				</div>
			</div>
			<a href="LogOutServlet">Logout</a>
		</div>
	</div>
	<button>
		<a href="Menu.jsp">BACK</a>
	</button>

	<div class="container">
		<p style="text-align: center;">
			<b>Show All student</b>
		</p>
	</div>
	<table>
		<thead>
			<tr>
				<th>sid</th>
				<th>firstname</th>
				<th>lastname</th>
				<th>gender</th>
				<th>age</th>
				<th>email</th>
				<th>phone</th>
				<th>address</th>
				<th>Dateofjoin</th>
				<th>edit</th>
				<th>delete</th>
				<th>AddCourse</th>
				<th>View</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${studentList}" var="student">
				<tr>
					<td><c:out value="${student.sid}" /></td>
					<td><c:out value="${student.firstName}" /></td>
					<td><c:out value="${student.lastName}" /></td>
					<td><c:out value="${student.gender}" /></td>
					<td><c:out value="${student.age}" /></td>
					<td><c:out value="${student.email}" /></td>
					<td><c:out value="${student.phone}" /></td>
					<td><c:out value="${student.address}" /></td>
					<td><c:out value="${student.dateOfJoin}" /></td>
					<td><a
						href="EditStudentServlet?sid=<c:out value='${student.sid}' />">Edit</a></td>
					<td><a
						href="DeleteStudentServlet?sid=<c:out value="${student.sid}" />">Delete</a></td>
					<td><a
						href="AddCourseServlet?sid=<c:out value="${student.sid}" />">Add</a></td>
					<td><a href="ViewServlet?sid=<c:out value='${student.sid}' />">View</a></td>
				</tr>
			</c:forEach>


		</tbody>
	</table>


	<div class="fixed-footer">
		<div class="container">Copyright &copy; 2022 My School</div>
	</div>

</body>
</html>


