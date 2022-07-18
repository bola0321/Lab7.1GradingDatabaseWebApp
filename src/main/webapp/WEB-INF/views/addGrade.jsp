<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add A Grade</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
	<form class= "form" action ="/gradeconfirmation" method= "post">
	
		<input type= "hidden" value="${grade.id}" name="id">
	
		<label for="name"> Name</label>
		<input type="text" value ="${grade.name}" name="name" placeholder="${grade.name}">
		
		
		<label for="type">Choose type:</label>

			<select name="type" id="type">
			  <option value="Assignment">Assignment</option>
			  <option value="Quiz">Quiz</option>
			  <option value="Exam">Exam</option>
			</select>
	
		<label for="score"> Score</label>
		<input type="text" value ="${grade.score}" name="score" placeholder="${grade.score}">
		
		<label for="total"> Possible Points</label>
		<input type="text" value ="${grade.total}" name ="total" placeholder="${grade.total}">

		<input class="button" type="submit" value="Add">
		
	
	</form>

</body>
</html> 