<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
<h1>Grades</h1>

<table class= table>
	<thead>
		<tr>
			<th>Name</th>
			<th>Type</th>
			<th>Score</th>
			<th>Possible Points</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var= "grade" items="${grades}">
			<tr>
				<td>${grade.name}</td>
				<td>${grade.type}</td>
				<td>${grade.score}</td>
				<td>${grade.total}</td>
				<td><a href="/delete?id=${grade.id}" class="button">Delete</a></td>
			
			</tr>
		
		</c:forEach>
	
	</tbody>


</table>
<a href="/gradeform" class="button">Add A Grade</a>





</body>
</html>