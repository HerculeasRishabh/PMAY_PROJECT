<!DOCTYPE html>
<html>
  <head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Beneficiary Format B (General)</title>
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
  
        <nav style= "margin-top: -22px;" class="topHead">
        
        
         
            <div class="nav1">
            <ul >
                <h4 style="padding-top: 10px; margin-left:60px; "> Format B- Required Information of Survey</h4>
            </ul>
            </div>

        </nav>

        <form action="http://localhost:8080/PMAY/BEN_Registration" method = "POST" enctype="multipart/form-data">
            <div class="row">
                <div class="col input-field s3">
                    <select required name="stateName" onChange="changecat(this.value);">
                            <option value="">Select State</option>
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
                    <select required name="districtName" id="city">
                        <option value="">District Name</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                        <input required name="cityName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">City Name</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="wardName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Ward Name</label> 
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                        <input required name="slumName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Slum Name</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="areaName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Area Name</label> 
                </div>
            </div>

            <div class="row">
                <div class="col input-field s6">
                    <select required name="compName">
                        <option value="">Preffered Component of Mission under which Survey needs assistance</option>
                        <option value="CLSS">Affordable Housing through Credit Linked Subsidy</option>
                        <option value="AHP">Affordable Housing in Partnership</option>
                        <option value="BLC">Beneficiary-led individual house construction or enhancement</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input required name="famHeadName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Head of Family</label>
                </div>
                <div class="col input-field s3">
                    <select required name="gender">
                        <option value="">Select Sex</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input required name="fathersName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Father's Name</label>
                </div>
                <div class="input-field col s3">
                    <input required name="headAge" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">Age of Head of Family</label>
                </div>
            </div>

            <div class="row">
                <p style="margin-left:10px;">Enter Address:</p>
                <div class="input-field col s2">
                    <input required name="addressHouseNumber" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">House number</label>
                </div>
                <div class="input-field col s4">
                    <input required name="addressStreetName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Street</label>
                </div>
            </div>
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="ownershipDetails">
                        <option value="">Enter Ownership Details of the Existing House</option>
                        <option value="Owner">Owner</option>
                        <option value="Co_Owner">Co-Owner</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="houseType">
                        <option value="">House Type based on the roof</option>
                        <option value="Pucca">Pucca</option>
                        <option value="Semi Pucca">Semi Pucca</option>
                        <option value="Kuccha">Kuccha</option>
                    </select>
                </div>
                <div class="col input-field s4">
                    <input required name="noOfRooms" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">No of Rooms in existing house excluding kitchen</label>
                </div>  
            </div>
            <div class="row">
                <div class="col input-field s2">
                    <input required name="mobileNumber" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">Mobile Number</label>
                </div>
                <div class="col input-field s4">
                    <input required name="aadharNumber" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">Aadhar Card Number</label>
                </div>
            </div>
				            <div id="memMain">
				                <div class="row">
				                    <p style="margin-left:10px;">Family Member Details</p>
				                    <div class="col input-field s3">
				                        <input name="nameFam" id="icon_prefix" type="text" class="validate">
				                        <label for="icon_prefix">Name of Family member</label>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberGenderFam">
				                            <option value="">Sex</option>
				                            <option value="Male">Male</option>
				                            <option value="Female">Female</option>
				                            <option value="Other">Other</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberRelationFam">
				                            <option value="">Relation</option>
				                            <option value="Mother">Mother</option>
				                            <option value="Father">Father</option>
				                            <option value="Sister">Sister</option>
				                            <option value="Husband">Husband</option>
				                            <option value="Son">Son</option>
				                            <option value="Daughter">Daughter</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <input name="memberAgeFam" id="icon_prefix" type="number" class="validate">
				                        <label for="icon_prefix">Age</label>
				                    </div>
				                    <div class="col input-field s3">
				                        <input name="memberAadharFam" id="icon_prefix" type="number" class="validate">
				                        <label for="icon_prefix">Aadhar Card Number</label>
				                    </div>
				                </div>
				            </div>
            <a style="margin-left:10px; margin-top: -15px; background-color: #f4511e" onclick="showMore()" class="waves-effect waves-light btn">add</a>

            <div class="row">
                <div class="col input-field s3">
                    <select required name="religionName">
                        <option value="">Select Religion</option>
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
                        <option value="">Select caste</option>
                        <option value="General">General</option>
                        <option value="SC">SC</option>
                        <option value="ST">ST</option>
                        <option value="OBC">OBC</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                    <input required name="accountNumber" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">Bank Account Number</label>
                </div>
                <div class="col input-field s4">
                    <input required name="bankName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Bank</label>
                </div>
                <div class="row">
                    <div class="col input-field s2">
                        <input required name="branchName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Name of Branch</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3"> 
                    <select required name="yearStay">
                        <option value="">Number of years of stay in city</option>
                        <option value="0 to 1 Year">0 to 1 Year</option>
                        <option value="1 to 3 Year">1 to 3 Years</option>
                        <option value="3 to 5 Years">3 to 5 Years</option>
                        <option value="More than 5 Years">More than 5 Years</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <input required name="dwellingUnits" id="icon_prefix" type="number" class="validate" step = "0.01">
                    <label for="icon_prefix">Size of Existing Dwelling Units</label>
                </div>    
            </div>
			<div class="row">
                <p class="col">Does the family already has a home/Residential land anywhere in India?</p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test3" value = "1"/>
                    <label for="test3">Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test4" value = "0"/>
                    <label for="test4">No</label>
                </p>
            </div>
            <div class="row">
                <p class="col">A person with Disability?</p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test1" value = "1"/>
                    <label for="test1" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test2" value = "0"/>
                    <label for="test2">No</label>
                </p>
            </div>
            
            <div class="row">
                <div class="col input-field s3"> 
                    <select required name="maritalStatus">
                        <option value="">Select Marital Status</option>
                        <option value="Married">Married</option>
                        <option value="Un-Married">Un-Married</option>
                        <option value="Single Woman or Widow">Single Woman or Widow</option>
                    </select>
                </div><div class="col input-field s3"> 
                    <select required name="employmentStatus">
                        <option value="">Select Employment Status</option>
                        <option value="Self Employed">Self Employed</option>
                        <option value="Salaried">Salaried</option>
                        <option value="Regular Wage">Regular Wage</option>
                        <option value="Labour Wage">Labour Wage</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <input required name="monthlyIncome" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Average Monthly Income</label>
                </div>    
            </div>
            <div class="row">
                <div class="col input-field s4">
                    <input required name="BLP_Card_No" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">BPL Card Number</label>
                </div>
            </div>
            
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="housingRequirement">
                        <option value="">Housing Requirement of Family</option>
                        <option value="New House">New House</option>
                        <option value="Enhancement">Enhancement</option>
                    </select>
                </div>    
            </div>

            <div class="row">
                <p style="margin-left:10px;">Upload a Photo of Head of the Family:</p>        
                <p style="margin-left:10px;">(The size of the Photograph should not be more than 16kb)</p>
                <div class="col file-field input-field">
                    <div class="btn">
                        <span>File</span>
                        <input required name="imageBeneficiary" type="file">
                    </div>
                    <div style="width:435px;" class="file-path-wrapper">
                        <input required class="file-path validate" type="text">
                    </div>
                </div>

            </div>
										<div class="row number">
                                          <div class="input-field col proName">
                                              <button name="submitbtn" type="submit" class="waves-effect waves-light btn fbtn">Submit</button>
                                          </div>
                                          <div class="input-field col proName">
                                              <button name="canclebtn" class="waves-effect waves-light btn fbtn">Cancle</button>
                                          </div>
                                        </div>    
        </form>
  <jsp:include page = "../Footers/IA_Footer.jspf"/>
