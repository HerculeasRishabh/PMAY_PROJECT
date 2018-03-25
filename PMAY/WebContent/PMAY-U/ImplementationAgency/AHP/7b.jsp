<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>Format for Projects under Affordable Housing in Partnership</title>
    <script src="../../js/jquery-3.3.1.js"></script>
    <script src="../../js/materialize.js"></script>
    <script src="../../js/material.js"></script>
    <script src="../../js/stateCity.js"></script>
    <link rel="stylesheet" href="../../css/materialize.css">
    <link rel="stylesheet" href="../../css/material.css">
    <link rel="stylesheet" href="../../css/style1.css">
    <script>
        $(document).ready(function() {
           $('select').material_select();
        });
     </script>
<jsp:include page = "../../Headers/IA_Header.jspf"/>
        <nav class="header">
             <div class="nav-wrapper">
              <p style ="padding-left: 60px; font-size: 20px; padding-top:20px;">Affordable Housing in Partnership DPR</p >
             </div>    
        </nav>  
        <form action="http://localhost:8080/PMAY/AHP_ULB_DPR_Insert" method = "POST">
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
                    <option value="">Select District </option>
                   </select>
                </div>

                <div class="row">
                        <div class="col input-field s3">
                            <input required name="cityName" id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">City Name</label>
                        </div>  
                </div>
            <div class="row">
                <div class="col input-field s3">
                        <input required name="projectName" id="project_name" type="text" class="validate">
                        <label for="project_name">Project Name</label>
                </div>
            </div>
                               
            <div class="row">
                    <div class="col input-field s3">
                      <select required name="SLNA_name">
                          <option value="">State Level Nodal Agency</option>
                          <option value="1">SLAC</option>
                          <option value="2">SLSMC</option>
                      </select>
                   </div>
               
                   <div class="col input-field s3">
                      <select required name="implementingAgency">
                          <option value="">Implementing Agency </option>
                          <option value="1">Urban Local Bodies</option>
                          <option value="2">Development Authority</option>
                          <option value="3">Housing Board</option>
                          <option value="4">Urban Improvement Trust</option>
                          <option value="5">Slum Rehabilitation Agency</option>
                          <option value="6">Private Agency</option>
                          <option value="7">Developer</option>
                      </select>
               </div>
            </div>
                  <p class="row">Project Cost(In Lakhs):</p>
                    <div class="row projectCost">
                      <div style="width:150px" class="col housing">
                        <div class="input-field col proCost">
                          <input required name="projectCostHousing" id="icon_prefix" type="number" step="0.01" class="validate">
                          <label for="icon_prefix">Housing</label>
                        </div>
                      </div>
                    <div style="width:150px" class="col infrastructure">
                    <div class="input-field col proCost">
                          <input required name="projectInfrastructure" id="icon_prefix" type="number" step="0.01" class="validate">
                          <label for="icon_prefix">Infrastructure</label>
                        </div>
                     </div> 
                     <div style="width:150px" class="col other">
                            <div class="input-field col proCost">
                              <input required name="othersCost" id="icon_prefix" type="number" step="0.01" class="validate">
                              <label for="icon_prefix">Others</label>
                            </div>
                     </div>
                   </div>
                     <p class="row">No. of EWS Beneficiaries covered in the Project:</p>
                     <div class="row ewsBeneficiaries">
                       <div style="width:150px" class="col general">
                         <div class="input-field col ewsBeneficiaries">
                           <input required name="ewsBeneficiariesGeneral" id="icon_prefix" type="number" class="validate">
                           <label for="icon_prefix">General</label>
                         </div>
                       </div>
                       <div style="width:150px" class="col sc">
                          <div class="input-field col ewsBeneficiaries">
                            <input required name="ewsBeneficiariesSC" id="icon_prefix" type="number" class="validate">
                            <label for="icon_prefix">SC</label>
                          </div>
                       </div> 
                       <div style="width:150px" class="col st">
                              <div class="input-field col ewsBeneficiaries">
                                <input required name="ewsBeneficiariesST" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">ST</label>
                              </div>
                       </div>
                       <div style="width:150px" class="col obc">
                              <div class="input-field col ewsBeneficiaries">
                                <input required name="ewsBeneficiariesOBC" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">OBC</label>
                              </div>
                       </div>
                      <div style="width:150px" class="col minority">
                              <div class="input-field col ewsBeneficiaries ">
                                <input required name="ewsBeneficiariesMinority" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">Minority</label>
                              </div>
                      </div>
                    </div>
                     <!--@-->
                    <div>
                     <p class="col"> Whether Beneficiary have been selected as per PMAY Guidelines:</p>
                      <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="pmayGuidelines" type="radio" id="test1" value = "1"/>
                        <label for="test1" >Yes</label>
                      </p>
                      <p class="col" style="margin-left:50px;">
                        <input required class="with-gap" name="pmayGuidelines" type="radio" id="test2" value = "0"/>
                        <label for="test2">No</label>
                      </p>
                    </div>
                    </div>
                      <!--@-->
                      <div class="row">
                            <div class="col input-field s4">
                                    <input required name="constructionCost" id="const_cost" type="number" class="validate" step = "0.01">
                                    <label for="const_cost">Construction Cost of EWS Unit( In Lakhs.)</label>
                            </div>
                            <div class="col input-field s3">
                                    <input required name="projectDuration" id="project_duration" type="number" class="validate" >
                                    <label for="project_duration">Project Duration(In Months)</label>
                            </div>
                      </div>
                      <!--@-->
                      <div class="row">
                        <p class="col"> Whether Sale Price is provided by State/UT:</p>
                         <p class="col" style="margin-left:50px;">
                           <input required class="with-gap" name="salesPriceProvided" type="radio" id="test3" value = "1"/>
                           <label for="test3" >Yes</label>
                         </p>
                         <p class="col" style="margin-left:50px;">
                           <input required class="with-gap" name="salesPriceProvided" type="radio" id="test4" value = "0"/>
                           <label for="test4">No</label>
                         </p>
                       </div><!--#--> 
                      <div class="row">
                            <div class="col input-field s3">
                                    <input required name="carpetArea" id="carpet_area" type="number" step="0.01" class="validate">
                                    <label for="carpet_area">Carpet Area of EWS Unit(in sqm)</label>
                            </div>
                      </div>
                      <!--@-->
                      <p class="row">Total No. of Houses Proposed in the Project:</p>
                      <div class="row houseProposed">
                        <div style="width:150px" class="col ewsUnit">
                          <div class="input-field col houseProposed ">
                            <input required name="houseProposedEWS" id="icon_prefix" type="number" class="validate">
                            <label for="icon_prefix">No. of EWS Unit</label>
                          </div>
                        </div>
                        <div style="width:150px" class="col ligUnit">
                           <div class="input-field col houseProposed ">
                             <input required name="houseProposedLIG" id="icon_prefix" type="number" class="validate">
                             <label for="icon_prefix">No. of LIG Units</label>
                           </div>
                        </div> 
                        <div style="width:150px" class="col migUnit">
                               <div class="input-field col  houseProposed">
                                 <input required name="houseProposedMIG" id="icon_prefix" type="number" class="validate">
                                 <label for="icon_prefix">No. of MIG Units</label>
                               </div>
                        </div>
                        <div style="width:150px" class="col higUnit">
                               <div class="input-field col  houseProposed">
                                 <input required name="houseProposedHIG" id="icon_prefix" type="number" class="validate">
                                 <label for="icon_prefix">No .of HIG Units</label>
                               </div>
                        </div>
                        <div style="width:200px" class="col commUnit">
                                <div class="input-field col  houseProposed">
                                  <input required name="houseProposedCommercial" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">No .of Commercial Units</label>
                                </div> 
                         </div>
                      </div>
                      <!--@-->
                      <div class="row">
                        <p class="col"> Whether open and transparent procedure has been envisaged to selct private partner?</p>
                        <p class="col" style="margin-left:50px;">
                           <input required class="with-gap" name="transparentProcedure" type="radio" id="test5" value = "1"/>
                           <label for="test5" >Yes</label>
                         </p>
                         <p class="col" style="margin-left:50px;">
                           <input required class="with-gap" name="transparentProcedure" type="radio" id="test6" value = "0"/>
                           <label for="test6">No</label>
                         </p>
                       </div><!--#--> 
                      
                      <div class="row">
                        
                          <div class="col input-field s6">
                                  <input required name="eligibleHousesEWS" id="centralAssist" type="number" class="validate">
                                  <label for="centralAssist">No. of EWS houses eligible for Central Assistance</label>
                          </div>
                        
                      </div> 
                        <!--#-->
                        <p class="row">Got Grant required(Rs. 1.50 Lakh per eligible EWS house)(Rs. In Lakhs):</p>
                        <div class="row houseGrant">
                            <div class="input-field col s4 houseGrant  ">
                              <input required name="stateGrant" id="icon_prefix" type="number" step="0.01" class="validate">
                              <label for="icon_prefix">State Grant(Rs. In Lakhs)</label>
                            </div>
                             <div class="input-field col s4 houseGrant ">
                               <input required name="landCost" id="icon_prefix" type="number" step="0.01" class="validate">
                               <label for="icon_prefix">Land Cost(Rs. In Lakhs)</label>
                          </div> 
                                 <div class="input-field col s4  houseGrant">
                                   <input required name="cashGrant" id="icon_prefix" type="number" step="0.01" class="validate">
                                   <label for="icon_prefix">Cash Grant(Rs. In Lakhs)</label>
                          </div>
                        </div>
                        <div class="row">
                                 <div class="input-field col s4 houseGrant">
                                   <input required name="implementingAgencyShare" id="icon_prefix" type="number" step="0.01" class="validate">
                                   <label for="icon_prefix">Implementing Agency Share(Rs In Lakhs)</label>
                                 </div>
                                  <div class="input-field col s4 houseGrant">
                                    <input required name="beneficiaryShare" id="icon_prefix" type="number" step="0.01" class="validate">
                                    <label for="icon_prefix">Beneficiary Share(Rs. In Lakhs)</label>
                           </div>
                       </div>
                       <!--@-->
                        <div class="row">
                          <p class="col"> Whether technical Specification/design for housin have been ensured as per Indian Standards/NBC/State Norms:</p>
                          <p class="col" style="margin-left:50px;">
                            <input required class="with-gap" name="technicalSpecification" type="radio" id="test7" value = "1"/>
                            <label for="test7" >Yes</label>
                          </p>
                          <p class="col" style="margin-left:50px;">
                            <input required class="with-gap" name="technicalSpecification" type="radio" id="test8" value = "0"/>
                            <label for="test8">No</label>
                          </p>
                        </div>
                            <div class="row">
                                <p class="col"> Whether trunk Infrastructure is existing or is being provided through AMRUT or any other Scheme: </p>
                                <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="trunkInfrastructure" type="radio" id="test9" value = "1"/>
                                  <label for="test9" >Yes</label>
                                </p>
                                <p class="col" style="margin-left:50px;">
                                  <input required class="with-gap" name="trunkInfrastructure" type="radio" id="test10" value = "0"/>
                                  <label for="test10">No</label>
                                </p>
                            </div>
                            
                           </div>
                           <p class="row"> Whether the provision of Civic Infrastructure has been made as per applicable State norms/CPHEEO Norms/IS Code/NBC: </p>
                          <div class="row">
                              <p class="col">Water Supply: </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="waterSupply" type="radio" id="test130" value = "1"/>
                                <label for="test130">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="waterSupply" type="radio" id="test140" value = "0"/>
                                <label for="test140">No</label>
                              </p>
                          </div>
                          <div class="row">
                              <p class="col">Sewerage: </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="sewrage" type="radio" id="test13" value = "1"/>
                                <label for="test13">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="sewrage" type="radio" id="test14" value = "0"/>
                                <label for="test14">No</label>
                              </p>
                          </div>
             
                          <div class="row">
                              <p class="col">Road: </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="road" type="radio" id="test15" value = "1"/>
                                <label for="test15">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="road" type="radio" id="test16" value = "0"/>
                                <label for="test16">No</label>
                              </p>
                          </div>
                          <div class="row">
                              <p class="col">Storm Water Drain: </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="stormWaterDrain" type="radio" id="test135" value = "1"/>
                                <label for="test135">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="stormWaterDrain" type="radio" id="test145" value = "0"/>
                                <label for="test145">No</label>
                              </p>
                          </div>
                          <div class="row">
                              <p class="col">External Electrification: </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="externalElectrification" type="radio" id="test17" value = "1"/>
                                <label for="test17">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="externalElectrification" type="radio" id="test18" value = "0"/>
                                <label for="test18">No</label>
                              </p>
                          </div>
                          <div class="row">
                              <p class="col">Solid waste Management: </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="solidWasteManagement" type="radio" id="test19" value = "1"/>
                                <label for="test19">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="solidWasteManagement" type="radio" id="test20" value = "0"/>
                                <label for="test20">No</label>
                              </p>
                          </div>
                          <div class="row other">
                                  <div class="input-field col s12">
                                    <input required name="anyOtherRequirement" id="icon_prefix" type="text" class="validate">
                                    <label for="icon_prefix">Any Other</label>
                                  </div>
                             </div>
                            <!--@-->
                            <div class="row">
                                <p class="col"> Whether Adequate social infrastructure facilities covered in the project: </p>
                                <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="socialInfrastructure" type="radio" id="test22" value = "1"/>
                                <label for="test22">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="socialInfrastructure" type="radio" id="test23" value = "0"/>
                                <label for="test23">No</label>
                              </p>
                            </div>
                             <div class="row">
                                <p class="col"> Whether disaster resistent features have been adopted 
                                    in concept,design and implementation of the project: </p>
                                <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="disasterManagement" type="radio" id="test24" value = "1"/>
                                <label for="test24">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="disasterManagement" type="radio" id="test25" value = "0"/>
                                <label for="test25">No</label>
                              </p>
                            </div>
                             <div class="row">
                                <p class="col"> Whether Quality Assurance is part of the Project: </p>  
                                <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="qualityAssurance" type="radio" id="test26" value = "1"/>
                                <label for="test26">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="qualityAssurance" type="radio" id="test27" value = "0"/>
                                <label for="test27">No</label>
                              </p>
                            </div> 
                             <div class="row">
                                <p class="col"> Whether O&M is part of the Project: </p>   
                                <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="partOnm" type="radio" id="test28" value = "1"/>
                                <label for="test28">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="partOnm" type="radio" id="test29" value = "0"/>
                                <label for="test29">No</label>
                              </p>
                            </div>
                            <div class="row">
                                <p class="col"> Whether encumbrance free land is available for the Project: </p>
                                <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="encumbanceFreeLand" type="radio" id="test30" value = "1"/>
                                <label for="test30">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="encumbanceFreeLand" type="radio" id="test31" value = "0"/>
                                <label for="test31">No</label>
                              </p>
                            </div>
                               
                            <div class="row">
                                <p class="col"> Whether any innovative/cost effective/Green Technology adopted in the Project: </p>
                                <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="projectInnovation" type="radio" id="test32" value = "1"/>
                                <label for="test32">Yes</label>
                              </p>
                              <p class="col" style="margin-left:50px;">
                                <input required class="with-gap" name="projectInnovation" type="radio" id="test33" value = "0"/>
                                <label for="test33">No</label>
                              </p>
                            </div>
                            <!--@-->
                               <!-- <div class="row"> -->
                                  <div class="row input-field s12">
                                          <input required name="commentSLAC" id="commentsOfslac" type="text" class="validate">
                                          <label for="commentsOfslac">Comments Of SLAC after Techno Economic Appraisal of DPR</label>
                                  </div>
                                  <div class="row input-field s12">
                                          <input required name="projectBrief" id="projectBrief" type="text" class="validate">
                                          <label for="projectBrief">Project Brief including any other information ULB/State would like to furnish</label>
                                  </div>
                              </div>
                                <div style="margin-left: 50px" class="row">
                                  <div class="col">
                            		<button name="submitbtn" type="submit" class="waves-effect waves-light btn fbtn">Submit</button>
                                  </div>
                                  <div class="col">
                                      <a class="waves-effect waves-light btn">Cancel</a>
                                  </div>
                                </div>
                      </div>
        </form>
    <jsp:include page = "../../Footers/IA_Footer.jspf"/>