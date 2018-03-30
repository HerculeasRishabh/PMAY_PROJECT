<%@page import="beneficiary.General.connection.*"%>

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    
    <meta charset="utf-8">
    <title>Beneficiary Format B (General) Edit</title>
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/materialize.js"></script>
    <script src="../js/material.js"></script>
    <script src="../js/showMore.js"></script>
    <script src="../js/stateCity.js"></script>
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/material.css">
    <link rel="stylesheet" href="../css/style.css">
    <script>
        $(document).ready(function() {
           $('select').material_select();
        });
     </script>
     <jsp:include page = "../Headers/IA_Header.jspf"/>
     
	    <%
            //Creating the reference of type ResultSet
            ResultSet RS = null;
	    	ResultSet RS2 = null;
	    	BEN_GNRL_Registration obj = new BEN_GNRL_Registration();
	    	String survey_no = request.getParameter("surveyNo");
	    	HttpSession session1 = request.getSession ();
	    	String old_Aadhar = (String) session1.getAttribute("old_Aadhar");
	    	RS2 = obj.selectRecord4BFamilyEdit(old_Aadhar);
            RS = obj.selectRecord4BEdit(old_Aadhar);
            int i = 1;
            RS.next();

        %>
        <nav style= "margin-top: 2px;" class="topHead">
         
            <div class="nav-wrapper">
                <p style="padding-left: 60px; font-size: 40px; padding-top: 17px;">Format B- Required Information of Survey Edit</p >
            </div>

        </nav>

        <form style= "margin-left:60px;" action="http://localhost:8080/PMAY/BEN_Gnrl_ULB_Update" method = "POST" enctype="multipart/form-data">
            <input type = "hidden" value = "<%= old_Aadhar %>" name = "old_aadhar">
            <div class="row">
                <div class="col input-field s3">
                    <select required name="stateName" onChange="changecat(this.value);">
                        	<option value="<%= RS.getString(2) %>"><%= RS.getString(2) %></option>
                            <option value="Andhra Pradesh">ANDHRA PRADESH</option>
                            <option value="Arunachal Pradesh">ARUNACHAL PRADESH</option>
                            <option value="Assam">ASSAM</option>
                            <option value="Bihar">BIHAR</option>
                            <option value="Chandigarh">CHANDIGARH</option>
                            <option value="Chattisgarh">CHHATTISGARH</option>
                            <option value="Dadra and Nagar Haveli">DADRA AND NAGAR HAVELI</option>
                            <option value="Daman and Diu">DAMAN AND DIU</option>
                            <option value="Delhi">Delhi</option>
                            <option value="Goa">GOA</option>
                            <option value="Gujrat">GUJARAT</option>
                            <option value="Haryana">HARYANA</option>
                            <option value="Himachal Pradesh">HIMACHAL PRADESH</option>
                            <option value="Jammu and Kashmir">JAMMU AND KASHMIR</option>
                            <option value="Jharkhand">JHARKHAND</option>
                            <option value="Karnataka">KARNATAKA</option>
                            <option value="Kerela">KERALA</option>
                            <option value="Madhya Pradesh">MADHYA PRADESH</option>
                            <option value="Maharashtra">MAHARASHTRA</option>
                            <option value="Manipur">MANIPUR</option>
                            <option value="Meghalaya">MEGHALAYA</option>
                            <option value="Mizoram">MIZORAM</option>
                            <option value="Nagaland">NAGALAND</option>
                            <option value="Odisha">ODISHA</option>
                            <option value="Puducherry">PUDUCHERRY</option>
                            <option value="Punjab">PUNJAB</option>
                            <option value="Rajasthan">RAJASTHAN</option>
                            <option value="Sikkim">SIKKIM</option>
                            <option value="Tamil Nadu">TAMIL NADU</option>
                            <option value="Telangana">TELANGANA</option>
                            <option value="Tripura">TRIPURA</option>
                            <option value="Uttar Pradesh">UTTAR PRADESH</option>
                            <option value="Uttrakhand">UTTARAKHAND</option>
                            <option value="West Bengal">WEST BENGAL</option>
                    </select>
                </div>
                <div class="col input-field s3"> 
                    <select required name="districtName" id="city" >
                        <option value = "<%= RS.getString(3) %>"><%= RS.getString(3) %>(District)</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                        <input required name="cityName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(4) %>">
                        <label for="icon_prefix"><%= RS.getString(4) %>(City Name)</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="wardName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(5) %>">
                        <label for="icon_prefix"><%= RS.getString(5) %>(Ward Name)</label> 
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                        <input required name="slumName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(6) %>">
                        <label for="icon_prefix"><%= RS.getString(6) %>(Slum Name)</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="areaName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(7) %>">
                        <label for="icon_prefix"><%= RS.getString(7) %>(Area Name)</label> 
                </div>
            </div>

            <div class="row">
                <div class="col input-field s6">
                    <select required name="compName">
						<option value="<%= RS.getString(8) %>"><%= RS.getString(8) %></option>
                        <option value="CLSS">Affordable Housing through Credit Linked Subsidy</option>
                        <option value="AHP">Affordable Housing in Partnership</option>
                        <option value="BLC">Beneficiary-led individual house construction or enhancement</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input required name="famHeadName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(9) %>">
                    <label for="icon_prefix"><%= RS.getString(9) %>(Name of Head of Family)</label>
                </div>
                <div class="col input-field s3">
                    <select required name="gender">
                        <option value="<%= RS.getString(10) %>"><%= RS.getString(10) %></option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input  required name="fathersName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(11) %>">
                    <label for="icon_prefix"><%= RS.getString(11) %>(Father's Name)</label>
                </div>
                <div class="input-field col s3">
                    <input required name="headAge" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(12) %>">
                    <label for="icon_prefix"><%= RS.getString(12) %>(Age of Head of Family)</label>
                </div>
            </div>

            <div class="row">
                <p style="margin-left:10px;">Enter Address:</p>
                <div class="input-field col s2">
                    <input required name="addressHouseNumber" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(13) %>">
                    <label for="icon_prefix"><%= RS.getString(13) %>(House number)</label>
                </div>
                <div class="input-field col s4">
                    <input required name="addressStreetName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(14) %>">
                    <label for="icon_prefix"><%= RS.getString(14) %>(Name of Street)</label>
                </div>
            </div>
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="ownershipDetails">
                        <option value="<%= RS.getString(16) %>"><%= RS.getString(16) %></option>
                        <option value="Owner">Owner</option>
                        <option value="Co_Owner">Co-Owner</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="houseType">
                        <option value="<%= RS.getString(17) %>"><%= RS.getString(17) %></option>
                        <option value="Pucca">Pucca</option>
                        <option value="Semi Pucca">Semi Pucca</option>
                        <option value="Kuccha">Kuccha</option>
                    </select>
                </div>
                <div class="col input-field s4">
                    <input required name="noOfRooms" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(18) %>">
                    <label for="icon_prefix"><%= RS.getString(18) %>(No of Rooms in existing house excluding kitchen)</label>
                </div>  
            </div>
            <div class="row">
                <div class="col input-field s2">
                    <input required name="mobileNumber" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(15) %>">
                    <label for="icon_prefix"><%= RS.getString(15) %>(Mobile Number)</label>
                </div>
                <div class="col input-field s4">
                    <input required name="aadharNumber" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(19) %>">
                    <label for="icon_prefix"><%= RS.getString(19) %>(Aadhar Card Number)</label>
                </div>
            </div>
            <%
            	int iFam = 1;
            	while (RS2.next()){
            	    
            %>
				            <div id="memMain">
				                <div class="row">
				                    <p style="margin-left:10px;">Family Members Details</p>
				                    <div class="col input-field s3">
				                        <input name="nameFam" id="icon_prefix" type="text" class="validate" value = "<%= RS2.getString(2) %>">
				                        <label for="icon_prefix"><%= RS2.getString(2) %>(Name of Family membe)r</label>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberGenderFam">
				                            <option value="<%= RS2.getString(3) %>"><%= RS2.getString(3) %> (SEX)</option>
				                            <option value="Male">Male</option>
				                            <option value="Female">Female</option>
				                            <option value="Other">Other</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberRelationFam">
				                            <option value="<%= RS2.getString(4) %>"><%= RS2.getString(4) %>(Relation)</option>
				                            <option value="Mother">Mother</option>
				                            <option value="Father">Father</option>
				                            <option value="Sister">Sister</option>
				                            <option value="Husband">Husband</option>
				                            <option value="Son">Son</option>
				                            <option value="Daughter">Daughter</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <input name="memberAgeFam" id="icon_prefix" type="number" class="validate" value = "<%= RS2.getString(5) %>">
				                        <label for="icon_prefix"><%= RS2.getString(5) %>(Age)</label>
				                    </div>
				                    <div class="col input-field s3">
				                        <input name="memberAadharFam" id="icon_prefix" type="number" class="validate" value = "<%= RS2.getString(6) %>">
				                        <label for="icon_prefix"><%= RS2.getString(6) %>(Aadhar Card Number)</label>
				                    </div>
				                </div>
				            </div>
			  <%
            	}
			 %>
            <a style="margin-left:10px; margin-top: -15px; background-color: #f4511e" onclick="showMore()" class="waves-effect waves-light btn">add</a>

            <div class="row">
                <div class="col input-field s3">
                    <select required name="religionName">
                        <option value="<%= RS.getString(20) %>"><%= RS.getString(20) %> (Religion)</option>
                        <option value="Hindu">Hindu</option>
                        <option value="Islam">Islam</option>
                        <option value="Christianity">Christianity</option>
                        <option value="Sikhism">Sikhism</option>
                        <option value="Buddhism">Buddhism</option>
                        <option value="Jainism">Jainism</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <select required name="casteName">
                        <option value="<%= RS.getString(21) %>"><%= RS.getString(21) %> (Caste)</option>
                        <option value="General">General</option>
                        <option value="SC">SC</option>
                        <option value="ST">ST</option>
                        <option value="OBC">OBC</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s4">
                    <input required name="bankName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(22) %>">
                    <label for="icon_prefix"><%= RS.getString(22) %>(Name of Bank)</label>
                </div>
                <div class="col input-field s3">
                    <input required name="accountNumber" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(23) %>">
                    <label for="icon_prefix"><%= RS.getString(23) %>(Bank Account Number)</label>
                </div>
                <div class="row">
                    <div class="col input-field s2">
                        <input required name="branchName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(24) %>">
                        <label for="icon_prefix"><%= RS.getString(24) %>(Name of Branch)</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3"> 
                    <select required name="yearStay">
                        <option value="<%= RS.getString(25) %>"><%= RS.getString(25) %> (Years Stay)</option>
                        <option value="0 to 1 Year">0 to 1 Year</option>
                        <option value="1 to 3 Year">1 to 3 Years</option>
                        <option value="3 to 5 Years">3 to 5 Years</option>
                        <option value="More than 5 Years">More than 5 Years</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <input required name="dwellingUnits" id="icon_prefix" type="number" class="validate" step = "0.01" value="<%= RS.getString(26) %>">
                    <label for="icon_prefix"><%= RS.getString(26) %>(Size of Existing Dwelling Units)</label>
                </div>    
            </div>
			<div class="row">
                <p class="col">Does the family already has a home/Residential land anywhere in India?</p>
                <%
                    int a = Integer.parseInt(RS.getString(29));
                    if (a == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test3" value = "1" checked/>
                    <label for="test3">Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test4" value = "0"/>
                    <label for="test4">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test3" value = "1"/>
                    <label for="test3" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test4" value = "0" checked/>
                    <label for="test4">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">A person with Disability?</p>
                <%
                    int q = Integer.parseInt(RS.getString(27));
                    if (q == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test1" value = "1" checked/>
                    <label for="test1" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test2" value = "0"/>
                    <label for="test2">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test1" value = "1" />
                    <label for="test1" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test2" value = "0" checked/>
                    <label for="test2">No</label>
                </p>
                <%
                    }
                %>
            </div>
            
            <div class="row">
                <div class="col input-field s3"> 
                    <select required name="maritalStatus">
                        <option value="<%= RS.getString(28) %>"><%= RS.getString(28) %>(Marital Status)</option>
                        <option value="Married">Married</option>
                        <option value="Un-Married">Un-Married</option>
                        <option value="Single Woman or Widow">Single Woman or Widow</option>
                    </select>
                </div><div class="col input-field s3"> 
                    <select required name="employmentStatus">
                        <option value="<%= RS.getString(30) %>"><%= RS.getString(30) %></option>
                        <option value="Self Employed">Self Employed</option>
                        <option value="Salaried">Salaried</option>
                        <option value="Regular Wage">Regular Wage</option>
                        <option value="Labour Wage">Labour Wage</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <input required name="monthlyIncome" id="icon_prefix" type="number" class="validate" step = "0.01" value="<%= RS.getString(31) %>">
                    <label for="icon_prefix"><%= RS.getString(31) %>(Average Monthly Income)</label>
                </div>    
            </div>
            <div class="row">
                <div class="col input-field s4">
                    <input required name="BLP_Card_No" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(32) %>">
                    <label for="icon_prefix"><%= RS.getString(32) %>(BPL Card Number)</label>
                </div>
            </div>
            
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="housingRequirement">
                        <option value="<%= RS.getString(33) %>"><%= RS.getString(33) %></option>
                        <option value="New House">New House</option>
                        <option value="Enhancement">Enhancement</option>
                    </select>
                </div>    
            </div>

            <div class="row">
            	
                <%
                	String link = "../" + RS.getString(34).substring(58);
                                    
                %>
                <img  width="300" src="<%= link%>">
                
                 
                <div class="row">
                
                	<input id="icon_prefix" type="text" class="validate" name = "img">
                	
                    <p style="margin-left:10px;">Upload a Photo of Head of the Family:</p>        
                    <p style="margin-left:10px;">(The size of the Photograph should not be more than 16kb)</p>
                    <div class="col file-field input-field">
                        <div class="btn">
                            <span>File</span>
                            <input name="imageBeneficiary" type="file">
                        </div>
                        <div style="width:435px;" class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                        </div>
                    </div>
                </div>
                </div>
               <input name="Submit" type = "submit" value = "submit">    
                           
        </form>
<jsp:include page = "../Footers/IA_Footer.jspf"/>