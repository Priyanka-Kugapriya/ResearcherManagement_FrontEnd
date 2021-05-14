$(document).ready(function() {

if ($("#alertSuccess").text().trim() == "") 
 { 
 		$("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); });

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) 
{ 
		// Clear status msges-------------
		 $("#alertSuccess").text(""); 
		 $("#alertSuccess").hide(); 
		 $("#alertError").text(""); 
		 $("#alertError").hide(); 
	
		// Form validation----------------
		var status = validateItemForm(); 
		
		// If not valid-------------------
		if (status != true) 
		 { 
				 $("#alertError").text(status); 
				 $("#alertError").show(); 
				 return; 
		 } 
	
		// If valid------------------------
   
		var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT";
		$.ajax({
				url : "ResearcherAPI",
				type : type,
				data : $("#formResearcher").serialize(),
				dataType : "text",
				complete : function(response, status) {
						onItemSaveComplete(response.responseText, status);
				}
		});

});

function onItemSaveComplete(response, status) {
	
	if (status == "success") {
		
		//console.log(response);
		var resultSet = JSON.parse(response);
		
		if (resultSet.status.trim() == "success") {
			
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
			
		} else if (resultSet.status.trim() == "error") {
			
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} 
	else if (status == "error") {
		
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
		
	} else {
		
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	
	$("#hidItemIDSave").val("");
	$("#formResearcher")[0].reset();
}

$(document).on("click", ".btnRemove", function(event) {

	
	$.ajax({
		url : "ResearcherAPI",
		type : "DELETE",
		data : "userID=" + $(this).data("itemid"),
		dataType : "text",
		complete : function(response, status) 
		
		{
			onItemDeleteComplete(response.responseText, status);
			
		}
	});
});

function onItemDeleteComplete(response, status) {
	
	if (status == "success") {
		
		var resultSet = JSON.parse(response);
		
		if (resultSet.status.trim() == "success") {
			
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
			
		} else if (resultSet.status.trim() == "error") {
			
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
		
	} else if (status == "error") {
		
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
		
	} else {
		
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}

// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) 
{ 
 $("#hidItemIDSave").val($(this).data("itemid"));
 $("#name").val($(this).closest("tr").find('td:eq(0)').text());
 $("#surname").val($(this).closest("tr").find('td:eq(1)').text());
 $("#gender").val($(this).closest("tr").find('td:eq(2)').text());
 $("#phoneNo").val($(this).closest("tr").find('td:eq(3)').text()); 
 $("#email").val($(this).closest("tr").find('td:eq(4)').text());
 $("#productType").val($(this).closest("tr").find('td:eq(5)').text());
 $("#productID").val($(this).closest("tr").find('td:eq(6)').text());
 
});



//CLIENT-MODEL=========================================
function validateItemForm()
{ 
		// NAME
		if ($("#name").val().trim() == "") 
		 { 
		 	return "Insert Name."; 
		 } 
	
		// SURNAME
		if ($("#surname").val().trim() == "") 
		 { 
		 	return "Insert Sir Name."; 
		 } 
	
		// GENDER
		if ($("#gender").val().trim() == "") 
		 { 
			 return "Select gender."; 
		 } 
	
		// PhoneNumber
		if ($("#phoneNo").val().trim() == "") 
		 { 
		 	return "Insert Phone Number."; 
		 } 
		// is numerical value
		var tmpPhone = $("#itemNumber").val().trim(); 
		if (!$.isNumeric(tmpPhone)) 
		 { 
		 return "Insert a numerical value for Phone number."; 
		 } 
	
	
		// EMAIL
		if ($("#email").val().trim() == "") 
		 { 
		 	return "Insert Email Address."; 
		 } 
	
	
		// ProductType
		if ($("#productType").val() == "0") 
		 { 
		 	return "Select Product Type."; 
		 } 
	
		// ProductID
		if ($("#productID").val().trim() == "") 
		 { 
		 	return "Insert ProductID."; 
		 } 
	
	
		return true; 
}
