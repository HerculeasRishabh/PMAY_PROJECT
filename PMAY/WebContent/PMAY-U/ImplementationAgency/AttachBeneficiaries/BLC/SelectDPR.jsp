<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "dpr.BLC.connection.*, java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Select DPR</title>
		<script src="../../../js/jquery-3.3.1.js"></script>
        <script src="../../../js/materialize.js"></script>
        <script src="../../../js/material.js"></script>
        <link rel="stylesheet" href="../../../css/materialize.css">
        <link rel="stylesheet" href="../../../css/material.css">
<jsp:include page = "../../../Headers/IA_Header.jspf"/>
		<nav style="margin-top: -10px; width: 80%; margin-left: 10%" class="topHead">
	        <div class="nav-wrapper " style=" background-color: #bf360c ;">
	          <ul>
	          	<center>
	          		<h4 style= "font-size:20px; padding-top: 20px;" >Attach Beneficiary to DPR</h4>
	          	</center>
	          </ul>
	        </div>
      	</nav>
      	<script>
	    	$(document).ready(function() {
	        	$('select').material_select();
	      	});
	    </script>
	    <%
	    	DPR_BLC_connection obj = new DPR_BLC_connection ();
	    
	    	ResultSet RS = null;
	    	
	    	RS = obj.selectBLC_DPR();
	    %>
	    
      	<form style="margin-left: 40%;" action = "http://localhost:8080/PMAY/PMAY-U/ImplementationAgency/AttachBeneficiaries/BLC/AttachBenDPR.jsp" method = "POST">
		  	<div class="row">
		  		<div class="input-field col s4">
				    <select name = "blcDPR_name">
				    <%
				    	while (RS.next()){
				    %>
				      <option value="<%= RS.getString (1) %>"><%= RS.getString (2)%></option>
				      <%
				    	}
				      %>
				    </select>
			  	</div>	
		  	</div>
		  	
               <input name="Submit" type = "submit" value = "submit">
		  	
      	</form>
      	</center>

      	</form>
<jsp:include page = "../../../Footers/IA_Footer.jspf"/>