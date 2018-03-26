<%-- 
    Document   : 7cEdit.jsp
    Created on : 23 Mar, 2018, 3:08:52 PM
    Author     : Baseem
--%>
<%@page import="dpr.InSitu.connection.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>IN-SITU Edit</title>
        <script src="../../js/jquery-3.3.1.js"></script>
        <script src="../../js/materialize.js"></script>
        <script src="../../js/material.js"></script>
        <script src="../../js/stateCity.js"></script>
        <link rel="stylesheet" href="../../css/materialize.css">
        <link rel="stylesheet" href="../../css/material.css">
        <link rel="stylesheet" href="../../css/style1.css">
        <script>
            $(document).ready(function () {
                $('select').material_select();
            });
        </script>
<jsp:include page = "../../Headers/IA_Header.jspf"/>
        <%
            //Creating the reference of type ResultSet
            ResultSet RS;
            //Creating the object of AdminVewRequestBean
            DPR_InSitu_connection obj = new DPR_InSitu_connection(); 
            //Using the static show_Customer_NV() function of Customer
            RS = obj.selectRecord7AEdit(1);
            int i = 1;
            RS.next(); 

        %>
        <br>
        <nav class="header" style="margin-left: 10%;width:80%;">
            <div class="nav-wrapper" style="margin-left: 20%;width:80%; background-color: green;">
                <p style ="padding-left: 60px; font-size: 20px; padding-top:20px;">7A- Beneficiary led Construction or Enhancement Edit</p >
            </div>    
        </nav>  
        <form action="http://localhost:8080/PMAY/InSitu_ULB_DPR_Update" method = "POST" style="background-color: #FFEBEE;border-width: 2px;border-radius: 20px;margin-left: 10%;width:80%;">
            <input type = "hidden" name = "INSITU_PROJECT_NO" value = "1">
            
            <div class="row">
                <div class="col input-field s3">
                    <select required name="stateName" onChange="changecat(this.value);">
                        <option value="<%= RS.getString(2)%>"><%= RS.getString(2)%></option>
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
                    <select name="districtName" id="city">
                        <option value="<%= RS.getString(3)%>"><%= RS.getString(3)%>(Name of the District) </option>
                    </select>

                </div>

                <div class="row">
                    <div class="col input-field s3">
                        <input name="cityName" id="icon_prefix" type="text" value="<%= RS.getString(4)%>" class="validate">
                        <label for="icon_prefix"><%= RS.getString(4)%>(Name of the City) </label>
                    </div>  
                </div>
                <div class="row">
                    <div class="col input-field s3">
                        <input name="slumName" id="icon_prefix" type="text" value="<%= RS.getString(5)%>" class="validate">
                        <label for="icon_prefix"><%= RS.getString(5)%>(Slum Name)</label>
                    </div>  
                    <div class="col input-field s3">
                        <input name="projectName" id="project_name" type="text" value="<%= RS.getString(6)%>" class="validate" >
                        <label for="project_name"><%= RS.getString(6)%>(Project Name)</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col input-field s3">
                        <select name="stateNodal">
                            <option value="<%= RS.getString(8)%>"><%= RS.getString(8)%>"(SLNA)</option>
                            <option value="SLAC">SLAC</option>
                            <option value="SLSMC">SLSMC</option>
                        </select>
                    </div>

                    <div class="col input-field s3">
                        <select name="IA_name">
                            <option value="<%= RS.getString(9)%>"><%= RS.getString(9)%>(IA)</option>
                            <option value="ULB">Urban Local Bodies</option>
                            <option value="DA">Development Authority</option>
                            <option value="HB">Housing Board</option>
                            <option value="UIT">Urban Improvement Trust</option>
                            <option value="SR">Slum Rehabilitation Agency</option>
                            <option value="PA">Private Agency</option>
                            <option value="DV">Developer</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s3 ">
                        <input required name="projectCost" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(10)%>">
                        <label for="icon_prefix"><%= RS.getString(10)%>(Rs.InLakhs)</label>
                    </div>
                    <div class="input-field col s3 ">
                        <input required name="projectDuration" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(11)%>">
                        <label for="icon_prefix"><%= RS.getString(11)%>(In Months)</label>
                    </div>
                </div>
                <!-- STATUS OF THE SLUM -->
                <div class="row">
                    <p class="row-2">Status of the Slum:</p>
                    <div class="col projectCode">
                        <div style="width:180px; margin-right: 20px;"  class="col input-field s6 frm2 proCode">
                            <select required name="slumStatus">
                                <%
                                    if (Integer.parseInt(RS.getString(12)) == 1) {
                                %>
                                <option value="1"><%= RS.getString(12)%></option>
                                <%
                                } else if (Integer.parseInt(RS.getString(12)) == 2) {
                                %>
                                <option value="2"><%= RS.getString(12)%></option>
                                <%
                                } else if (Integer.parseInt(RS.getString(12)) == 3) {
                                %>
                                <option value="3"><%= RS.getString(12)%></option>
                                <option value="1">1(notified)</option>
                                <option value="2">2(recognized)</option>
                                <option value="3">3(identified)</option>
                            </select>
                        </div>

                        <div style="width:150px; margin-right: 40px;" class="col number">
                            <div class="input-field col proName">
                                <input required style="width:150px" name="slumArea" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(13)%>">
                                <label for="icon_prefix"><%= RS.getString(13)%>(Area of Slum)</label>
                            </div>
                        </div>
                        <div  style="width:230px; margin-right: 40px;" class="col number">
                            <div class="input-field col proName">
                                <input required style="width:230px"  name="rehabilitationArea" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(14)%>">
                                <label style="width:230px"  for="icon_prefix"><%= RS.getString(14)%>(Area under Rehabilitation)</label>
                            </div>
                        </div>
                        <div style="width:130px;" class="col number">
                            <div class="input-field col proName">
                                <input required style="width: 140px;" name="slumPopulation" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(15)%>">
                                <label for="icon_prefix"><%= RS.getString(15)%>(Slum Population)</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row ewsBeneficiaries">

                    <p class="row">Number of Existing Slum households:</p>
                    <div style="width:150px" class="col general">
                        <div class="input-field col ewsBeneficiaries">

                            <input name="general" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(16)%>">
                            <label for="icon_prefix"><%= RS.getString(16)%>(GEN)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col sc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="sc" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(17)%>">
                            <label for="icon_prefix"><%= RS.getString(17)%>(SC)</label>
                        </div>
                    </div> 
                    <div style="width:150px" class="col st">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="st" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(18)%>">
                            <label for="icon_prefix"><%= RS.getString(18)%>(ST)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col obc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="obc" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(19)%>">
                            <label for="icon_prefix"><%= RS.getString(19)%>(OBC)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col minority">
                        <div class="input-field col ewsBeneficiaries ">
                            <input name="minority" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(20)%>">
                            <label for="icon_prefix"><%= RS.getString(20)%>(Minority)</label>
                        </div>
                    </div>
                </div> 
                <div class="row ewsBeneficiaries">
                    <p class="row">Number of Eligible slum households:</p>
                    <div style="width:150px" class="col general">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="general1" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(21)%>">
                            <label for="icon_prefix"><%= RS.getString(21)%>(GEN)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col sc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="sc1" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(22)%>">
                            <label for="icon_prefix"><%= RS.getString(22)%>(SC)</label>
                        </div>
                    </div> 
                    <div style="width:150px" class="col st">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="st1" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(23)%>">
                            <label for="icon_prefix"><%= RS.getString(23)%>(ST)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col obc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="obc1" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(24)%>">
                            <label for="icon_prefix"><%= RS.getString(24)%>(OBC)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col minority">
                        <div class="input-field col ewsBeneficiaries ">
                            <input name="minority1" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(25)%>">
                            <label for="icon_prefix"><%= RS.getString(25)%>(Minority)</label>
                        </div>
                    </div>
                </div>
                <!--@-->

                <div class="row">

                    <div class="input-field col s3 ">
                        <input required name="houseProposed" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(26)%>">
                        <label for="icon_prefix"><%= RS.getString(26)%>(HProposed)</label>
                    </div>
                    <div class="input-field col s3 ">
                        <input required name="carpetArea" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(27)%>">
                        <label for="icon_prefix"><%= RS.getString(27)%>(TCAinSq.mtr)</label>
                    </div>
                </div>
				<div class = "row">
                <p class="col"> Whether Beneficiary have been selected as per PMAY Guidelines:</p>
                <%
                    int a = Integer.parseInt(RS.getString(28));
                    if (a == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test432" value = "1" checked/>
                    <label for="test432" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test433" value = "0"/>
                    <label for="test433">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test434" value = "1"/>
                    <label for="test434" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test435" value = "0" checked/>
                    <label for="test435">No</label>
                </p>
                <%
                    }
                %>
				</div>
                <!--@-->

                <!--@-->
				<div class = "row">                
                    <p class="col">Whether private partner has been selected through open competitive bidding ?</p>
					<div class="col">
                    <%
                        int b = Integer.parseInt(RS.getString(29));
                        if (b == 1) {
                    %>
                    <p>
                    <input required name="privatePartner" type="radio" id="test100" value = "1" checked />
                        <label for="test100">Yes</label>
                        <input required name="privatePartner" type="radio" id="test110" value = "0"/>
                        <label for="test110">No</label>
                    </p>   
                    <%
                    } else {
                    %>
                    <p><input required name="privatePartner" type="radio" id="test120" value = "1"/>
                        <label for="test120">Yes</label>
                        <input required name="privatePartner" type="radio" id="test130" value = "0" checked />
                        <label for="test130">No</label>
                    </p>              
                <%
                    }
                %>
            		</div>
            	</div>
            <!--**************************************************************-->
            <p style="margin-left:10px;">Incentives to Private Partner : </p>
            <div class="row">
                <div class="input-field col s3">
                    <input required name="fsiArea" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(30)%>">
                    <label for="icon_prefix"><%= RS.getString(30)%>(Existing FSIA)</label>
                </div>
                <div class="input-field col s3">
                    <input required name="providedFsi" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(31)%>">
                    <label for="icon_prefix"><%= RS.getString(31)%>(Provided FSIA)</label>
                </div>
                <div class="input-field col s3">
                    <input required name="otherIncentives" id="icon_prefix" type="text" class="validate" value = "<%= RS.getString(32)%>">
                    <label for="icon_prefix"><%= RS.getString(32)%>(Other incentives)</label>
                </div>
            </div>

            <!--**************************************************************-->
            <!--#-->
            <p class="row">Govt. Grant required(Rs. 1.50 Lakh per eligible beneficiary)(Rs. In Lakhs):</p>
            <div class="row houseGrant">
                <div class="input-field col s3 houseGrant  ">
                    <input name="stateGrant" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(34)%>">
                    <label for="icon_prefix"><%= RS.getString(34)%>(SG in lakh)</label>
                </div>
                <div class="input-field col s3  houseGrant">
                    <input name="ulbGrant" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(35)%>">
                    <label for="icon_prefix"><%= RS.getString(35)%>(ULB in lakh)</label>
                </div>
                <div class="input-field col s3 houseGrant">
                    <input name="beneficiaryShare" id="icon_prefix" type="number" class="validate" step = "0.01" value = "<%= RS.getString(36)%>">
                    <label for="icon_prefix"><%= RS.getString(36)%>(BEN_S in lakh)</label>
                </div>
            </div>
            <!--@-->

            <div class="row">
                <p class="col"> Whether technical specification/dwelling unit design for housing have been ensured as per Indian Standards/NBC/State norms?</p>
                <%
                    int d = Integer.parseInt(RS.getString(37));
                    if (d == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="techSpecification" type="radio" id="test7" value = "1" checked/>
                    <label for="test7" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="techSpecification" type="radio" id="test8" value = "0"/>
                    <label for="test8">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="techSpecification" type="radio" id="test7" value = "1"/>
                    <label for="test7" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="techSpecification" type="radio" id="test8" value = "0" checked />
                    <label for="test8">No</label>
                </p>
                <%
                    }
                %>
            </div>

            <!--*****************************-->
            <%}
            %>

            <div class="row" >
                <div class="input-field col s8 slumName">
                    <select required name="arrangementType">
                        <%
                            if (Integer.parseInt(RS.getString(38)) == 1) {
                        %>
                        <option value="1">RENT (temporary arrangement for beneficiary.)</option>
                        <%
                        } else {
                        %>
                        <option value="2">TRANSIT SHELTER(temporary arrangement for beneficiary.)</option>
                        <%
                            }
                        %>         
                        <option value="1">RENT</option>
                        <option value="2">TRANSIT SHELTER</option> 
                    </select>
                </div>
            </div>


            <!--*****************************-->

            <p>Whether trunk infrastructure is existing or is being provided through AMRUT or any other scheme?</p>
            <div class="row">
                <%
                    int f = Integer.parseInt(RS.getString(39));
                    if (f == 1) {
                %>
                <p><input required name="trunkInfrastructure" type="radio" id="test5" value = "1" checked/>
                    <label for="test5">Yes</label>
                    <input required name="trunkInfrastructure" type="radio" id="test6" value = "0"/>
                    <label for="test6">No</label>
                </p>   

                <%
                } else {
                %>
                <p><input required name="trunkInfrastructure" type="radio" id="test5" value = "1"/>
                    <label for="test5">Yes</label>
                    <input required name="trunkInfrastructure" type="radio" id="test6" value = "0" checked/>
                    <label for="test6">No</label>
                </p>   
                <%
                    }
                %>
            </div>

            <!--*****************************-->


            <p>Whether trunk and line infrastructure is existing or being provisioned? </p>
            <div class="row">
                <p class="col">Water Supply: </p>

                <%
                    int x = Integer.parseInt(RS.getString(40));
                    if (x == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="waterSupply" type="radio" id="test11" value = "1" checked />
                    <label for="test11" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="waterSupply" type="radio" id="test12" value = "0"/>
                    <label for="test12">No</label>
                </p>

                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="waterSupply" type="radio" id="test11" value = "1"/>
                    <label for="test11" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="waterSupply" type="radio" id="test12" value = "0" checked/>
                    <label for="test12">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">Sewrage Facility: </p>
                <%
                    int g = Integer.parseInt(RS.getString(41));
                    if (g == 1) {

                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="sewerageFacility" type="radio" id="test13" value = "1" checked />
                    <label for="test13" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="sewerageFacility" type="radio" id="test14" value = "0"/>
                    <label for="test14">No</label>
                </p>
                <%                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="sewerageFacility" type="radio" id="test13" value = "1"/>
                    <label for="test13" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="sewerageFacility" type="radio" id="test14" value = "0" checked />
                    <label for="test14">No</label>
                </p>
                <%
                    }
                %>
            </div>


            <div class="row">
                <p class="col">Road Facility </p>
                <%
                    int h = Integer.parseInt(RS.getString(42));
                    if (h == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="roadFacility" type="radio" id="test130" value = "1" checked />
                    <label for="test130" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="roadFacility" type="radio" id="test140" value = "0"/>
                    <label for="test140">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="roadFacility" type="radio" id="test130" value = "1"/>
                    <label for="test130" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="roadFacility" type="radio" id="test140" value = "0" checked />
                    <label for="test140">No</label>
                </p>
                <%
                    }
                %>
            </div>

            <div class="row">
                <p class="col">Storm Water Drain </p>
                <%
                    int j = Integer.parseInt(RS.getString(43));
                    if (j == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="stormDrain" type="radio" id="test131" value = "1" checked />
                    <label for="test131" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="stormDrain" type="radio" id="test141" value = "0"/>
                    <label for="test141">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="stormDrain" type="radio" id="test131" value = "1"/>
                    <label for="test131" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="stormDrain" type="radio" id="test141" value = "0" checked />
                    <label for="test141">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">External Electrification</p>
                <%
                    int k = Integer.parseInt(RS.getString(44));
                    if (k == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="externalElectrification" type="radio" id="test15" value = "1" checked />
                    <label for="test15" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="externalElectrification" type="radio" id="test16" value = "0"/>
                    <label for="test16">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="externalElectrification" type="radio" id="test15" value = "1"/>
                    <label for="test15" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="externalElectrification" type="radio" id="test16" value = "0" checked/>
                    <label for="test16">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">Solid Waste Management</p>
                <%
                    int m = Integer.parseInt(RS.getString(45));
                    if (m == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="solidWasteManagement" type="radio" id="test17" value = "1" checked/>
                    <label for="test17" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="solidWasteManagement" type="radio" id="test18" value = "0"/>
                    <label for="test18">No</label>
                </p>
                <%
                } else {
                %><p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="solidWasteManagement" type="radio" id="test17" value = "1"/>
                    <label for="test17" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="solidWasteManagement" type="radio" id="test18" value = "0" checked/>
                    <label for="test18">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <!-- <div class="row other"> -->
            <div class="input-field row s12">
                <input name="anyOtherRequirement" id="icon_prefix" type="text" class="validate" value = "<%= RS.getString(46)%>">
                <label for="icon_prefix"><%= RS.getString(46)%>Any Other</label>
            </div>

            <!-- </div> -->
            <!--@-->
            <div class="row">
                <p class="col"> Whether disaster resistent features have been adopted 
                    in concept,design and implementation of the project? </p>
                    <%
                        int n = Integer.parseInt(RS.getString(47));
                        if (n == 1) {
                    %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disasterResistence" type="radio" id="test21" value = "1" checked/>
                    <label for="test21" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disasterResistence" type="radio" id="test22" value = "0"/>
                    <label for="test22">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disasterResistence" type="radio" id="test21" value = "1"/>
                    <label for="test21" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disasterResistence" type="radio" id="test22" value = "0" checked/>
                    <label for="test22">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <!--*****************************************************-->





            <div class="row">
                <p class="col">Whether Quality Assurance is part of the Project, if not,how it is proposed to be ensured?</p>
                <%
                    int c = Integer.parseInt(RS.getString(48));
                    if (c == 1) {
                %>
                <p><input required name="qualityAssurance" type="radio" id="test19" value = "1" checked />
                    <label for="test19">Yes</label>
                    <input required name="qualityAssurance" type="radio" id="test20" value = "0"/>
                    <label for="test20">No</label>
                </p>   
                <%
                } else {
                %>
                <p><input required name="qualityAssurance" type="radio" id="test19" value = "1"/>
                    <label for="test19">Yes</label>
                    <input required name="qualityAssurance" type="radio" id="test20" value = "0" checked/>
                    <label for="test20">No</label>
                </p>   
                <%
                    }
                %>
            </div>
            <!--@-->


            <div class="row">
                <p class="col">Whether O&M is part of Project, if yes, for how many years?</p>
                <%
                    int e = Integer.parseInt(RS.getString(49));
                    if (e == 1) {
                %>
                <p><input required name="onm" type="radio" id="test21" value = "1" checked/>
                    <label for="test21">Yes</label>
                    <input required name="onm" type="radio" id="test22" value = "0"/>
                    <label for="test22">No</label>
                </p>   
                <%
                } else {
                %>
                <p><input required name="onm" type="radio" id="test21" value = "1"/>
                    <label for="test21">Yes</label>
                    <input required name="onm" type="radio" id="test22" value = "0" checked/>
                    <label for="test22">No</label>
                </p>   
                <%
                    }
                %>
            </div> 



            <div class="row">
                <p class="col"> Whether encumbrance free land is available for the project or not?</p>
                <%
                    int o = Integer.parseInt(RS.getString(50));
                    if (o == 1) {
                %>
                <p><input required name="freeLand" type="radio" id="test23" value = "1" checked/>
                    <label for="test23">Yes</label>
                    <input required name="freeLand" type="radio" id="test24" value = "0"/>
                    <label for="test24">No</label>
                </p>   
                <%
                } else {
                %>
                <p><input required name="freeLand" type="radio" id="test23" value = "1"/>
                    <label for="test23">Yes</label>
                    <input required name="freeLand" type="radio" id="test24" value = "0" checked/>
                    <label for="test24">No</label>
                </p>   
                <%
                    }
                %>
            </div>

            <div class="row">
                <p class="col">Whether any innovative/cost Effective/Green Technology adopted in the project?</p>
                <%
                    int t = Integer.parseInt(RS.getString(51));
                    if (t == 1) {
                %>

                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="innovativeProject" type="radio" id="test33" value = "1" checked/>
                    <label for="test33" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="innovativeProject" type="radio" id="test34" value = "0"/>
                    <label for="test34">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="innovativeProject" type="radio" id="test33" value = "1" checked/>
                    <label for="test33" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="innovativeProject" type="radio" id="test34" value = "0" checked/>
                    <label for="test34">No</label>
                </p>
                <%
                    }
                %>
            </div>

            <div class="row"><p>Comments of SLAC after techno economic appraisal of DPR</p>
                <div class="input-field col s8">
                    <textarea name="comments" id="textarea1" class="materialize-textarea" value = "<%= RS.getString(52)%>"></textarea>
                    <label for="textarea1"><%= RS.getString(52)%></label>
                </div>
            </div>

            <div class="row"><p>Project brief including any other information ULB/State would like to furnish</p>
                <div class="input-field col s8">
                    <textarea name="projectBrief" id="textarea1" class="materialize-textarea" value = "<%= RS.getString(53)%>"></textarea>
                    <label for="textarea1"></label>
                </div>
            </div>
            <div class="row number">
                <div class="input-field col proName">
                    <button name="submitbtn" type="submit" class="waves-effect waves-light btn fbtn">Submit</button>
                </div>
            </div>
            <div class="row number">
                <div class="input-field col proName">
                    <button name="canclebtn" class="waves-effect waves-light btn fbtn">Cancle</button>
                </div>
            </div>
        </form>
        <!--*****************************************************************-->

      
            <jsp:include page = "../../Footers/IA_Footer.jspf"/>
       

