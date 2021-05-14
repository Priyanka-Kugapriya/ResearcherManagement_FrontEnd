<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Researcher Details</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Researcher.js"></script>
</head>
<body>
<div class="container">
		<div class="row">
				<div class="col-8">
 
					 <h1 class="m-3">Researcher details</h1>
					 
					 <form id="formResearcher">
 
					 <!-- NAME -->
					 <div class="input-group input-group-sm mb-3">
					 	<div class="input-group-prepend">
					 		<span class="input-group-text" id="lblName">Name: </span>
						 </div>
						 <input type="text" id="txtName" name="txtName">
					 </div>
					 <!-- SURNAME -->
					 <div class="input-group input-group-sm mb-3">
					 	<div class="input-group-prepend">
					 		<span class="input-group-text" id="lblSurName">Sir Name: </span>
						 </div>
						 <input type="text" id="txtSurName" name="txtSurName">
					 </div>
					 <!-- GENDER -->
						 <div class="input-group input-group-sm mb-3">
						 <div class="input-group-prepend">
						 <span class="input-group-text" id="lblGender">Gender: </span>
						 </div>
						 &nbsp;&nbsp;Male 
						<input type="radio" id="rdoGenderMale" name="rdoGender" value="Male">
						 &nbsp;&nbsp;Female 
						<input type="radio" id="rdoGenderFemale" name="rdoGender" value="Female">
					 </div>
					  <!-- PHONENUMBER -->
					 <div class="input-group input-group-sm mb-3">
					 	<div class="input-group-prepend">
					 		<span class="input-group-text" id="lblPhoneNumber">Phone Number: </span>
						 </div>
						 <input type="tel" id="txtNumber" name="txtNumber">
					 </div>
					 <!-- EMAIL -->
					 <div class="input-group input-group-sm mb-3">
					 	<div class="input-group-prepend">
					 		<span class="input-group-text" id="Email">Email Address: </span>
						 </div>
						 <input type="email" id="txtEmail" name="txtEmail">
					 </div>
					 <!-- PRODUCTTYPE -->
					 <div class="input-group input-group-sm mb-3">
							 <div class="input-group-prepend">
							 	<span class="input-group-text" id="lblProdType">Product Type: </span>
							 </div>
							 <select id="ddlProdType" name="ddlProductType">
								 <option value="0">--Select Product Type--</option>
								 <option value="1">Project In Need Of Fund</option>
								 <option value="2">Finished Products</option>
							 </select>
					 </div>
					 <!-- PRODUCTID -->
					 <div class="input-group input-group-sm mb-3">
					 	<div class="input-group-prepend">
					 		<span class="input-group-text" id="lblProdID">Product ID: </span>
						 </div>
						 <input type="text" id="txtID" name="txtID">
					 </div>
					 <div id="alertSuccess" class="alert alert-success"></div>
					 <div id="alertError" class="alert alert-danger"></div>
					 
				<input type="button" id="btnSave" value="Save" class="btn btn-primary">
				</form>
				</div>
</div>
 
<br>
			 
<div class="row">
			<div class="col-12" id="colResearchers">
			 
			</div>
</div>

</div>
</body>
</html>