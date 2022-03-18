<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="EditStudentCourse.css">
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
					<a href="Addstudent.jsp">Add Student</a> <a
						href="Showstudentdata.jsp">Show all Student</a> <a
						href="GetStudentCourseServlet">Show all Student Course</a>

				</div>
			</div>
			<a href="LogOutServlet">Logout</a>
		</div>

	</div>
	<button>
		<a href="GetStudentCourseServlet">BACK</a>
	</button>


	<div class="wrapper">
		<div class="title">
			Update Student Course
			<form action="EditStudentCourseServlet" method="post">
		</div>
		<div class="form">
			<div class="inputfield">
				<label></label> <input type="hidden" class="input" name="course_id"
					value='<c:out value="${StudentCourse.course_id}" />'>
			</div>
			<div class="inputfield">
				<label>Course Name</label> <input type="text" class="input"
					name="course_name"
					value='<c:out value="${StudentCourse.course_name}" />'>
			</div>
			<div class="inputfield">
				<label>course Mentor</label> <input type="text" class="input"
					name="course_mentor"
					value='<c:out value="${StudentCourse.course_mentor}" />'>
			</div>



			<div class="inputfield">
				<label>Course Duration</label> <input type="number" class="input"
					name="course_duration"
					value='<c:out value="${StudentCourse.course_duration}" />'>
			</div>
			<div class="inputfield">
				<label></label> <input type="hidden" class="input" name="sid"
					value='<c:out value="${StudentCourse.sid}" />'>
			</div>

			<div class="inputfield">
				<input type="submit" value="Update Student course" class="btn">
			</div>
		</div>
		</form>
	</div>


	<div class="fixed-footer">
		<div class="container">Copyright &copy; 2022 My School</div>
	</div>

</body>
</html>