<%-- 
    Document   : 7cEdit.jsp
    Created on : 23 Mar, 2018, 3:08:52 PM
    Author     : Baseem
--%>
<%@page import="dpr.AHP.connection.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>AHP 7b Edit</title>
        <script src="../../js/jquery-3.3.1.js"></script>
        <script src="../../js/materialize.js"></script>
        <script src="../../js/stateCity.js"></script>
        <script src="../../js/material.js"></script>
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
            DPR_AHP_connection obj = new DPR_AHP_connection();
            //Using the static show_Customer_NV() function of Customer
            RS = obj.selectRecord7bEdit(1);
            int i = 1;
            RS.next();

        %> 
        <nav class="header" style="margin-left: 10%;width:80%;">
            <div class="nav-wrapper" style="margin-left: 20%;width:80%; background-color: green;">
                <p style ="padding-left: 60px; font-size: 20px; padding-top:20px;">Beneficiary led Construction or Enhancement</p >
            </div>    
        </nav>  
        <form action="http://localhost:8080/Hack2k18_PMAY/BLC_ULB_DPR_Update" method = "POST" style="background-color: #FFEBEE;border-width: 2px;border-radius: 20px;margin-left: 10%;width:80%;">
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
                        <input name="projectName" id="project_name" type="text" value="<%= RS.getString(5)%>" class="validate">
                        <label for="project_name"><%= RS.getString(5)%>(Project Name)</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col input-field s3">
                        <select name="SLNA_name">
                            <option value="<%= RS.getString(7)%>"><%= RS.getString(7)%>(SLNA)</option>
                            <option value="SLAC">SLAC</option>
                            <option value="SLSMC">SLSMC</option>
                        </select>
                    </div>

                    <div class="col input-field s3">
                        <select name="IA_name">
                            <option value="<%= RS.getString(8)%>"><%= RS.getString(8)%>(IA)</option>
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
                <!--@--
                <p class="row">Project Cost(In Lakhs):</p>-->

                <div class="row ewsBeneficiaries">

                    <p class="row">No. of Enhancement Beneficiaries covered in the Project:</p>
                    <div style="width:150px" class="col general">
                        <div class="input-field col ewsBeneficiaries">

                            <input name="newBenGnrl" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(10)%>">
                            <label for="icon_prefix"><%= RS.getString(10)%>(GEN)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col sc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="newBenSC" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(11)%>">
                            <label for="icon_prefix"><%= RS.getString(11)%>(SC)</label>
                        </div>
                    </div> 
                    <div style="width:150px" class="col st">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="newBenST" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(12)%>">
                            <label for="icon_prefix"><%= RS.getString(12)%>(ST)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col obc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="newBenOBC" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(13)%>">
                            <label for="icon_prefix"><%= RS.getString(13)%>(OBC)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col minority">
                        <div class="input-field col ewsBeneficiaries ">
                            <input name="newBenMinority" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(14)%>">
                            <label for="icon_prefix"><%= RS.getString(14)%>(Minority)</label>
                        </div>
                    </div>
                </div> 
                <div class="row ewsBeneficiaries">
                    <p class="row">No. of New Construction Beneficiaries covered in the Project:</p>
                    <div style="width:150px" class="col general">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="oldBenGnrl" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(15)%>">
                            <label for="icon_prefix"><%= RS.getString(15)%>(GEN)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col sc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="oldBenSC" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(16)%>">
                            <label for="icon_prefix"><%= RS.getString(16)%>(SC)</label>
                        </div>
                    </div> 
                    <div style="width:150px" class="col st">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="oldBenST" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(17)%>">
                            <label for="icon_prefix"><%= RS.getString(17)%>(ST)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col obc">
                        <div class="input-field col ewsBeneficiaries">
                            <input name="oldBenOBC" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(18)%>">
                            <label for="icon_prefix"><%= RS.getString(18)%>(OBC)</label>
                        </div>
                    </div>
                    <div style="width:150px" class="col minority">
                        <div class="input-field col ewsBeneficiaries ">
                            <input name="oldBenMinority" id="icon_prefix" type="number" class="validate" value = "<%= RS.getString(19)%>">
                            <label for="icon_prefix"><%= RS.getString(19)%>(Minority)</label>
                        </div>
                    </div>
                </div>
                <!--@-->

                <p class="col"> Whether Beneficiary have been selected as per PMAY Guidelines:</p>


                <%
                    int a = Integer.parseInt(RS.getString(20));
                    if (a == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test1" value = "1" checked/>
                    <label for="test1" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test2" value = "0"/>
                    <label for="test2">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test1" value = "1"/>
                    <label for="test1" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="pmayGuidelines" type="radio" id="test2" value = "0" checked/>
                    <label for="test2">No</label>
                </p>
                <%
                    }
                %>

                <!--@-->

                <!--@-->
                <div class="row">
                    <p class="col">Whether it has been ensured that selected Beneficiaries have rightfull ownership of the land?</p>

                    <%
                        int b = Integer.parseInt(RS.getString(21));
                        if (b == 1) {
                    %>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="ownershipEnsured" type="radio" id="test3" value = "1" checked/>
                        <label for="test3" >Yes</label>
                    </p>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="ownershipEnsured" type="radio" id="test4" value = "0" />
                        <label for="test4">No</label>
                    </p>
                    <%
                    } else {
                    %>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="ownershipEnsured" type="radio" id="test3" value = "1" />
                        <label for="test3" >Yes</label>
                    </p>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="ownershipEnsured" type="radio" id="test4" value = "0" checked/>
                        <label for="test4">No</label>
                    </p>
                    <%
                        }
                    %>
                </div>
                <div class="row">
                    <p class="col">Whether building plan for all houses have been approved?</p>
                    <%
                        int c = Integer.parseInt(RS.getString(22));
                        if (c == 1) {
                    %>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="buildingPlanApproval" type="radio" id="test30" value = "1" checked/>
                        <label for="test30" >Yes</label>
                    </p>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="buildingPlanApproval" type="radio" id="test40" value = "0"/>
                        <label for="test40">No</label>
                    </p>
                    <%
                    } else {
                    %>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="buildingPlanApproval" type="radio" id="test30" value = "1"/>
                        <label for="test30" >Yes</label>
                    </p>
                    <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="buildingPlanApproval" type="radio" id="test40" value = "0" checked />
                        <label for="test40">No</label>
                    </p>
                    <%
                        }
                    %>
                </div>
                <!--@-->
                <!--#-->
                <p class="row">Govt. Grant required(Rs. 1.50 Lakh per eligible beneficiary)(Rs. In Lakhs):</p>
                <div class="row houseGrant">
                    <div class="input-field col s3 houseGrant  ">
                        <input name="stateGrant" id="icon_prefix" type="number" class="validate" step = "0.01">
                        <label for="icon_prefix"><%= RS.getString(24)%>(SG in lakh)</label>
                    </div>
                    <div class="input-field col s3  houseGrant">
                        <input name="ulbGrant" id="icon_prefix" type="number" class="validate" step = "0.01">
                        <label for="icon_prefix"><%= RS.getString(25)%>(ULB in lakh)</label>
                    </div>
                    <div class="input-field col s3 houseGrant">
                        <input name="benShare" id="icon_prefix" type="number" class="validate" step = "0.01">
                        <label for="icon_prefix"><%= RS.getString(26)%>(BEN_S in lakh)</label>
                    </div>
                </div>
                <!--@-->
                <div class="row">
                    <p class="col"> Whether technical Specification/design for housing have been ensured as per Indian Standards/NBC/State Norms:</p>
                    <%
                        int d = Integer.parseInt(RS.getString(27));
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
            </div>
            <div class="row">
                <p class="col">Whether it has been ensured that balance cost of construction is tied up with State Grant, ULB Grant and Beneficiary Share? </p>
                <%
                    int e = Integer.parseInt(RS.getString(28));
                    if (e == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ensuredBalanceCost" type="radio" id="test9" value = "1" checked />
                    <label for="test9" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ensuredBalanceCost" type="radio" id="test10" value = "0"/>
                    <label for="test10">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ensuredBalanceCost" type="radio" id="test9" value = "1"/>
                    <label for="test9" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ensuredBalanceCost" type="radio" id="test10" value = "0" checked />
                    <label for="test10">No</label>
                </p>
                <%
                    }
                %>
            </div> 



            <p>Whether trunk and line infrastructure is existing or being provisioned? </p>
            <div class="row">
                <p class="col">Water Supply: </p>

                <%
                    int f = Integer.parseInt(RS.getString(29));
                    if (f == 1) {
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
                    int g = Integer.parseInt(RS.getString(30));
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
                <%               
                    } else {
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
                    int h = Integer.parseInt(RS.getString(31));
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
                    int j = Integer.parseInt(RS.getString(32));
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
                    int k = Integer.parseInt(RS.getString(33));
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
                    int m = Integer.parseInt(RS.getString(34));
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
                <input name="anyOtherRequirement" id="icon_prefix" type="text" class="validate">
                <label for="icon_prefix">Any Other</label>
            </div>

            <!-- </div> -->
            <!--@-->
            <div class="row">
                <p class="col"> Whether disaster resistent features have been adopted 
                    in concept,design and implementation of the project? </p>
                    <%
                        int n = Integer.parseInt(RS.getString(36));
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
            <div class="row">
                <p class="col"> Whether Demand Survey completed for entire city? </p>
                <%
                    int o = Integer.parseInt(RS.getString(37));
                    if (o == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="demandSurvey" type="radio" id="test23" value = "1" checked/>
                    <label for="test23" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="demandSurvey" type="radio" id="test24" value = "0"/>
                    <label for="test24">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="demandSurvey" type="radio" id="test23" value = "1"/>
                    <label for="test23" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="demandSurvey" type="radio" id="test24" value = "0" checked/>
                    <label for="test24">No</label>
                </p>
                <%
                    }
                %>
            </div>

            <div class="row">
                <p class="col">Whether city-wide integrated project have been formulated?</p>
                <%
                    int p = Integer.parseInt(RS.getString(38));
                    if (p == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="cityWideurvey" type="radio" id="test25" value = "1" checked/>
                    <label for="test25" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="cityWideurvey" type="radio" id="test26" value = "0"/>
                    <label for="test26">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="cityWideurvey" type="radio" id="test26" value = "1"/>
                    <label for="test25">Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="cityWideurvey" type="radio" id="test26" value = "0" checked/>
                    <label for="test26">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">Whether validation with SECC date for housing condition conducted?</p>
                <%
                    int q = Integer.parseInt(RS.getString(39));
                    if (q == 1) {
                %>            

                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="validationWithSECC" type="radio" id="test27" value = "1" checked/>
                    <label for="test27" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="validationWithSECC" type="radio" id="test28" value = "0"/>
                    <label for="test28">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="validationWithSECC" type="radio" id="test27" value = "1"/>
                    <label for="test27" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="validationWithSECC" type="radio" id="test28" value = "0" checked/>
                    <label for="test28">No</label>
                </p>
                <%
                    }
                %>
            </div>

            <div class="row">
                <p class="col">Whether direct benefit transfer of fund to individual bank account of beneficiary ensured in the project?</p>
                <%
                    int r = Integer.parseInt(RS.getString(40));
                    if (r == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="directBenefitTransfer" type="radio" id="test290" value = "1" checked/>
                    <label for="test290" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="directBenefitTransfer" type="radio" id="test300" value = "0"/>
                    <label for="test300">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="directBenefitTransfer" type="radio" id="test290" value = "1"/>
                    <label for="test290" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="directBenefitTransfer" type="radio" id="test300" value = "0" checked/>
                    <label for="test300">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">Whether there is provision in DPR for tracking/monitoring the progress of individual houses through geo-tagged photographs?</p>
                <%
                    int s = Integer.parseInt(RS.getString(41));
                    if (s == 1) {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="geoTagInDPR" type="radio" id="test31" value = "1" checked/>
                    <label for="test31" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="geoTagInDPR" type="radio" id="test32" value = "0"/>
                    <label for="test32">No</label>
                </p>
                <%
                } else {
                %>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="geoTagInDPR" type="radio" id="test31" value = "1" />
                    <label for="test31" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="geoTagInDPR" type="radio" id="test32" value = "0" checked/>
                    <label for="test32">No</label>
                </p>
                <%
                    }
                %>
            </div>
            <div class="row">
                <p class="col">Whether any innovative/cost Effective/Green Technology adopted in the project?</p>
                <%
                    int t = Integer.parseInt(RS.getString(42));
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
            <div class="row">
                <div class="col input-field s12">
                    <input name="otherInfo" id="otherInfo" type="text" class="validate">
                    <label for="projectBrief"><%= RS.getString(44)%>(story)</label>
                </div>
            </div>



            <div style="alignment-adjust: central;" class="row">
                <div class="col">
                    <a class="waves-effect waves-light btn"><input name="Save" type="submit"></a>
                </div>
            </div>
        </form>
    <jsp:include page = "../../Footers/IA_Footer.jspf"/>
