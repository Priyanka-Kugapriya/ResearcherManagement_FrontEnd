<%@page import="model.Researcher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Researcher Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Researcher.js"></script>

</head>
<body>

<div class="container"><div class="row"><div class="col-6">

		<h1>Researcher Management V10.1</h1>
		
		<form id="formResearcher" name="formResearcher">
				 Name : 
				<input id="name" name="name" type="text" 
				 class="form-control form-control-sm">
				<br> Sir Name: 
				<input id="sirname" name="sirname" type="text" 
				 class="form-control form-control-sm">
				 <br> Phone Number: 
				<input id="phoneNo" name="phoneNo" type="text" 
				 class="form-control form-control-sm">
				 <br> Email: 
				<input id="email" name="email" type="text" 
				 class="form-control form-control-sm">
				<br> Gender: 
				<input id="gender" name="gender" type="text" 
				 class="form-control form-control-sm">
				 <br> Product Type: 
				<input id="productType" name="productType" type="text" 
				 class="form-control form-control-sm">
				<br> ProductID: 
				<input id="productID" name="productID" type="text" 
				 class="form-control form-control-sm">
				<br>
		 		
		 		
				<input id="btnSave" name="btnSave" type="button" value="Save" 
				 class="btn btn-primary">
				<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				
				
				
		
		</form>

		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		
		<%  
			    Researcher researcherObj = new Researcher();
				out.print(researcherObj.readUsers());
				
		%>
		<br>
		
		<div id="divItemsGrid">	
		
		</div>


</div>
</div>
</div>


</body>
</html>