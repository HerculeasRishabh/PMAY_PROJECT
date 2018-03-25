<%@page import="beneficiary.InSitu.connection.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Slum Redevelopment Form</title>
    <script src="../../js/jquery-3.3.1.js"></script>
    <script src="../../js/materialize.js"></script>
    <script src="../../js/material.js"></script>
    <link rel="stylesheet" href="../../css/materialize.css">
    <link rel="stylesheet" href="../../css/material.css">
    <link rel="stylesheet" href="../../css/InSitu.css">
    <link rel="stylesheet" href="../../css/slumRD.css">
    <script src="../../js/showMore.js"></script>
    <script src="../../js/stateCity.js"></script>
    <script>        
        $(document).ready(function() {
            $('select').material_select();
        });
    </script>

<jsp:include page = "../../Headers/IA_Header.jspf"/>
		<%
            //Creating the reference of type ResultSet
            ResultSet RS = null;
			ResultSet RS2 = null;
			BEN_InSitu_Register obj = new BEN_InSitu_Register();
            RS = obj.selectRecord4AEdit("123");
            RS2 = obj.selectRecord4AFamilyEdit("123");
            int i = 1;
            RS.next();

        %>
    <nav class="inSituHead">
        <div class="nav-wrapper">
          <ul>
          <h4 style= "margin-left:60px;" >Format A-Information of Survey Being Covered Under Slum Redevelopment</h4>
          </ul>
        </div>
    </nav>

        <form style= "margin-left:60px;" action="http://localhost:8080/PMAY/BEN_InSitu_ULB_Update" method = "POST" enctype="multipart/form-data">
        	<input type = "hidden" value = "121212121212" name = "old_aadhar">
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

                <Script>
                </Script>

                <div class="col input-field s3"> 
                    <select required name="districtName" id="city">
                        <option value="<%= RS.getString(3) %>"><%= RS.getString(3) %></option>
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
                <div class="col input-field s3">
                    <select required name="vertical">
                        <option value="InSitu">InSitu Redevelopment</option>
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
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                        <option value="3">Other</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input required name="fathersName" id="icon_prefix" type="text" class="validate" value="<%= RS.getString(11) %>">
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
                <div class="col input-field s2">
                    <input required name="mobileNumber" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(15) %>">
                    <label for="icon_prefix"><%= RS.getString(15) %>(Mobile Number)</label>
                </div>
                <div class="col input-field s4">
                    <input required name="aadharNumber" id="icon_prefix" type="number" class="validate" value="<%= RS.getString(16) %>">
                    <label for="icon_prefix"><%= RS.getString(16) %>(Aadhar Card Number)</label>
                </div>
            </div>
            <%
            	while (RS2.next()){
            %>
				            <div id="memMain">
				                <div class="row">
				                    <p style="margin-left:10px;">Family Member 1 Details</p>
				                    <div class="col input-field s1">
				                        <input name="serialNumber" value=1 id="icon_prefix" type="text" class="validate">
				                    </div>
				                    <div class="col input-field s3">
				                        <input name="nameFam" id="icon_prefix" type="text" class="validate" value = "<%= RS2.getString(2) %>">
				                        <label for="icon_prefix"><%= RS2.getString(2) %>(Name of Family member)</label>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberGenderFam">
				                            <option value="<%= RS2.getString(4) %>"><%= RS2.getString(4) %>(Sex)</option>
				                            <option value="1">Male</option>
				                            <option value="2">Female</option>
				                            <option value="3">Other</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberRelationFam">
				                            <option value="<%= RS2.getString(3) %>"><%= RS2.getString(3) %>(Relation)</option>
				                            <option value="1">Mother</option>
				                            <option value="2">Father</option>
				                            <option value="3">Sister</option>
				                            <option value="4">Husband</option>
				                            <option value="5">Son</option>
				                            <option value="6">Daughter</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <input name="memberAgeFam" id="icon_prefix" type="text" class="validate" <%= RS2.getString(5) %>>
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
                        <option value="<%= RS.getString(17) %>"><%= RS.getString(17) %></option>
                        <option value="1">Hindu</option>
                        <option value="2">Islam</option>
                        <option value="3">Christianity</option>
                        <option value="3">Sikhism</option>
                        <option value="3">Buddhism</option>
                        <option value="3">Jainism</option>
                        <option value="3">Other</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <select required name="casteName">
                        <option value="<%= RS.getString(18) %>"><%= RS.getString(18) %></option>
                        <option value="1">General</option>
                        <option value="2">SC</option>
                        <option value="3">ST</option>
                        <option value="4">OBC</option>
                    </select>
                </div>
            </div>
             
                <div class="row">
                    <p class="col">Whether person with Disability?</p>
                    <%
                        int b = Integer.parseInt(RS.getString(19));
                        if (b == 1) {
                    %>
                    <p><input name="disability" type="radio" id="test1" value = "1" checked/>
                        <label for="test1">Yes</label>
                        <input name="disability" type="radio" id="test2" value = "0"/>
                        <label for="test2">No</label>
                      </p>   
                    </div>
                    <%
                    } else {
                    %>
                    <p>
                    	<input name="disability" type="radio" id="test1" value = "1"/>
                        <label for="test1">Yes</label>
                        <input name="disability" type="radio" id="test2" value = "0" checked/>
                        <label for="test2">No</label>
                     </p>   
                    </div>
                    <%
                        }
                    %>
					<div class = "row">
                    <div class="col">
                               <select class="newFont" name="maritalStatus">
                        			<option value="<%= RS.getString(20) %>"><%= RS.getString(20) %></option>
                                    <option value="1">Married</option>
                                    <option value="2">Un-married</option>
                        			<option value="3">Single Woman or Widow</option>
                                </select>
                       </div>
                    </div>
               
                          <div class="row">
	                          <div class="col">
	                                <p>Whether the Family Owns any House/Residential land anywhere in India</p>
	                                
	                                	<%
					                        int v = Integer.parseInt(RS.getString(21));
					                        if (v == 1) {
					                    %>
					                    <p><input name="ownsHouseLand" type="radio" id="test01" value = "1" checked/>
		                                    <label for="test01">Yes</label>
		                                    <input name="ownsHouseLand" type="radio" id="test02" value = "0"/>
		                                    <label for="test02">No</label>
	                                	</p>
					                    <%
					                    } else {
					                    %>
					                    <p>
					                    	<input name="ownsHouseLand" type="radio" id="test01" value = "1" checked/>
		                                    <label for="test01">Yes</label>
		                                    <input name="ownsHouseLand" type="radio" id="test02" value = "0"/>
		                                    <label for="test02">No</label>
	                                	</p>
					                    <%
					                        }
					                    %>
	                          </div>
                           </div>    
                    <div class="row">
                    <div class="col input-field s4"> 
                        <select name="ownershipDetails">
                            <option value="<%= RS.getString(23) %>"><%= RS.getString(23) %></option>
                            <option value="1">Owner</option>
                            <option value="2">Co-Owner</option>
                        </select>
                        </div>
                        
                       <div class="col input-field s4 frm2 state2">
                            <input name="monthlyIncome" id="icon_prefix" type="number" class="validate" step = "0.01" value="<%= RS.getString(22) %>">
                            <label for="icon_prefix"><%= RS.getString(22) %>(Average Monthly Income of Households(in Rs.))</label>
                       </div>
                </div>    
                 <img src = "/Users/rishabhojha/git/PMAY_PROJECT/PMAY/WebContent/PMAY-U/ImagesBeneficiaryInSitu/2018.03.23.11.27.19.jpg" alt = "benImage" 
                    height = "500" width = "300">
                <div class="row">
                    <p style="margin-left:10px;">Upload a Photo of Head of the Family:</p>        
                    <p style="margin-left:10px;">(The size of the Photograph should not be more than 16kb)</p>
                   
                    <div class="col file-field input-field">
                    
                        <div class="btn">
                        	
                            <span>File</span>
                            <input name="imageBeneficiary" type="file" value = "<%= RS.getString(24) %>">
                        </div>
                        <div style="width:435px;" class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                        </div>
                    </div>
    
                </div>
                <div class="row number">
                        <div class="input-field col proName">
                            <button name="submitbtn" type="submit" class="waves-effect waves-light btn fbtn">Submit</button>
                      </div>
                      </div>
                      <div class="row number">
                        <div class="input-field col proName">
                            <button name="canclebtn" class="waves-effect waves-light btn fbtn">Cancel</button>
                        </div>
                      </div>
                </form>
<jsp:include page = "../../Footers/IA_Footer.jspf"/>