<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Search Beneficiary</title>
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/materialize.js"></script>
    <script src="../js/material.js"></script>
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/material.css">
    <link rel="stylesheet" href="../css/InSitu.css">

    <script>
        $(document).ready(function() {
           $('select').material_select();
        });
     </script>

<jsp:include page = "../Headers/IA_Header.jspf"/>

<nav class="inSituHead">
        <div class="nav-wrapper">
          <p class="brand">Search Beneficiary</p >
	        </div>
      </nav>

<center>
<div style="margin-top: 50px; border: 1px solid black; width: 500px; margin-left: 50px; height: 350px; width: 690px;" id="d1">
 
      		<form style="margin-top: 50px; width: 500px; " id = "Search_By_Aadhar" action = "" method = "POST">

      			
      			 <div class="input-field col s8 slumName">
             	
             	 <input  id="icon_prefix" type="text" name = "benAadhar">
            	 <label for="icon_prefix">Search By Aadhar Number</label>
            	
            	 </div>

            	 <div class = "b1">	
            	 
            	 <input style="width:100px;  height:50px; background: #f4511e; color: white; text-align: center; " type="Search" value="Search">
            	 
            	 </div>


			</form>

			<form style="margin-top: 50px; width: 500px; " action = "" method = "POST">

      			 <div class="input-field col s8 slumName">
             	
             	 <input  id="icon_prefix" type="text" name = "benName">
            	 <label for="icon_prefix">Search By Name</label>
            
            	 </div>

            	 <div class = "b2">

            	 <input style="width:100px;  height:50px; background: #f4511e; color: white;  text-align: center;" type="Search" value="Search">
	
            	 </div>

      		</form>


</div>

	<div style="margin-top: 50px;  width: 500px; margin-left: 50px; height: auto; width: 690px; margin-bottom:30px;">

			<form action = "http://localhost:8080/PMAY/PMAY-U/GeneralContent/4bSelectAllEdit.jsp" method = "POST">

      			<div>
      			  <input style="width:500px;  height:50px; background: #f4511e; color: white; text-align: center;" type="submit" value="SEARCH ALL BENEFICIARIES">
      			</div>

      		</form>
      		

	</div>
</center>
<jsp:include page = "../Footers/IA_Footer.jspf"/>