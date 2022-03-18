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
<link rel="stylesheet" href="ShowStudentCourse.css">
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
		<a href="GetStudentServlet">BACK</a>
	</button>

	<div class="container">
		<p style="text-align: center;">
			<b>Show All Student Course</b>
		</p>
	</div>
	<table>
		<thead>
			<tr>
				<th>CourseId</th>
				<th>CourseName</th>
				<th>CourseMentor</th>
				<th>CourseDuration</th>
				<th>StudentsId</th>
				<th>Edit</th>
				<th>Delete</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${studentcourseList}" var="entry">

				<tr>
					<td><c:out value="${entry.value.course_id}" /></td>
					<td><c:out value="${entry.value.course_name}" /></td>
					<td><c:out value="${entry.value.course_mentor}" /></td>
					<td><c:out value="${entry.value.course_duration}" /></td>
					<td><c:out value="${entry.value.sid}" /></td>

					<td><a
						href="EditStudentCourseServlet?course_id=<c:out value='${entry.value.course_id}' />">Edit</a></td>
					<td><a
						href="DeleteStudentCourseServlet?course_id=<c:out value="${entry.value.course_id}" />">Delete</a></td>

				</tr>
			</c:forEach>


		</tbody>
	</table>


	<div class="fixed-footer">
		<div class="container">Copyright &copy; 2022 My School</div>
	</div>

</body>
</html>