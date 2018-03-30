<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    
    <meta charset="utf-8">
    <title>In-Situ Slum Development Form</title>
    <script src="../../js/jquery-3.3.1.js"></script>
    <script src="../../js/materialize.js"></script>
    <script src="../../js/material.js"></script>
    <link rel="stylesheet" href="../../css/materialize.css">
    <link rel="stylesheet" href="../../css/material.css">
    <link rel="stylesheet" href="../../css/InSitu.css">
    <link rel="stylesheet" href="../../css/slumRD.css">
    <script src="../../js/stateCity.js"></script>
    <script>
        $(document).ready(function() {
           $('select').material_select();
        });
     </script>
  <jsp:include page = "../../Headers/IA_Header.jspf"/>
    <nav style="margin-top: 0px;"class="inSituHead">
        <div class="nav-wrapper">
          <ul>
          <p style= "margin-left:60px; padding-top: 10px; margin-top:0px;"class="brand">In-Situ Slum Redevelopment DPR</p>
          </ul>
        </div>
      </nav>
      <form name="inSitu" action = "http://localhost:8080/PMAY/InSitu_ULB_DPR_Insert" method = "POST" class="inSituForm">
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
                    <option value="">Select District</option>
                    </select>
            </div>
           </div>
            <div class="row">
                <div class="col input-field s3">
                        <input required name="cityName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">City Name</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="slumName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Slum Name</label> 
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3 ">
                    <input required name="projectName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Project Name</label>
              </div>
              <div class="col input-field s3">
                      <select required name="stateNodal">
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

              <div class="row">
                <div class="input-field col s3 ">
                    <input required name="projectCost" id="icon_prefix" type="number" class="validate" step = "0.01">
                    <label for="icon_prefix">Project Cost(Rs. In Lakhs)</label>
              </div>
              <div class="input-field col s3 ">
                  <input required name="projectDuration" id="icon_prefix" type="number" class="validate" step = "0.01">
                  <label for="icon_prefix">Project Duration(In Months)</label>
            </div>
          </div>

          <!-- STATUS OF THE SLUM -->
          <div class="row">
              <p class="row-2">Status of the Slum:</p>
              <div class="projectCode">
                <div style="width:180px; margin-right: 20px;"  class="row input-field s6 frm2 proCode">
                  <select required name="slumStatus">
                      <option value="">Select Status</option>
                      <option value="1">1(notified)</option>
                      <option value="2">2(recognized)</option>
                      <option value="3">3(identified)</option>
                  </select>
                </div>
                
                <div style="width:150px; margin-right: 40px;" class="row number">
                  <div class="input-field col proName">
                    <input required style="width:150px" name="slumArea" id="icon_prefix" type="number" class="validate" step = "0.01">
                    <label for="icon_prefix">Area of Slum</label>
                  </div>
                </div>
                <div  style="width:230px; margin-right: 40px;" class="row number">
                  <div class="input-field col proName">
                    <input required style="width:230px"  name="rehabilitationArea" id="icon_prefix" type="number" class="validate" step = "0.01">
                    <label style="width:230px"  for="icon_prefix">Area under Rehabilitation</label>
                  </div>
                </div>
                <div style="width:130px;" class="row number">
                  <div class="input-field col proName">
                    <input required style="width: 140px;" name="slumPopulation" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">Slum Population</label>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="row ewsBeneficiaries">
                   
                      <p class="row">Number of Existing Slum households:</p>
                      <div style="width:150px" class="col general">
                         <div class="input-field col ewsBeneficiaries">
                           <input name="general" id="icon_prefix" type="number" class="validate">
                           <label for="icon_prefix">General</label>
                         </div>
                       </div>
                       <div style="width:150px" class="col sc">
                          <div class="input-field col ewsBeneficiaries">
                            <input name="sc" id="icon_prefix" type="number" class="validate">
                            <label for="icon_prefix">SC</label>
                          </div>
                       </div> 
                       <div style="width:150px" class="col st">
                              <div class="input-field col ewsBeneficiaries">
                                <input name="st" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">ST</label>
                              </div>
                       </div>
                       <div style="width:150px" class="col obc">
                              <div class="input-field col ewsBeneficiaries">
                                <input name="obc" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">OBC</label>
                              </div>
                       </div>
                      <div style="width:150px" class="col minority">
                              <div class="input-field col ewsBeneficiaries ">
                                <input name="minority" id="icon_prefix" type="number" class="validate">
                                <label for="icon_prefix">Minority</label>
                              </div>
                      </div>
                    </div> 
                    <div class="row ewsBeneficiaries">
                        <p class="row">Number of Eligible slum households:</p>
                        <div style="width:150px" class="col general">
                           <div class="input-field col ewsBeneficiaries">
                             <input name="general1" id="icon_prefix" type="number" class="validate">
                             <label for="icon_prefix">General</label>
                           </div>
                         </div>
                         <div style="width:150px" class="col sc">
                            <div class="input-field col ewsBeneficiaries">
                              <input name="sc1" id="icon_prefix" type="number" class="validate">
                              <label for="icon_prefix">SC</label>
                            </div>
                         </div> 
                         <div style="width:150px" class="col st">
                                <div class="input-field col ewsBeneficiaries">
                                  <input name="st1" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">ST</label>
                                </div>
                         </div>
                         <div style="width:150px" class="col obc">
                                <div class="input-field col ewsBeneficiaries">
                                  <input name="obc1" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">OBC</label>
                                </div>
                         </div>
                        <div style="width:150px" class="col minority">
                                <div class="input-field col ewsBeneficiaries ">
                                  <input name="minority1" id="icon_prefix" type="number" class="validate">
                                  <label for="icon_prefix">Minority</label>
                                </div>
                        </div>
                      </div>
               
               		<div class="row">
                        
                       <div class="input-field col s3 ">
                            <input required name="houseProposed" id="icon_prefix" type="number" class="validate">
                            <label for="icon_prefix">No. of Houses proposed</label>
                      </div>
                            <div class="input-field col s3 ">
                                <input required name="carpetArea" id="icon_prefix" type="number" class="validate" step = "0.01">
                                <label for="icon_prefix">Total Carpet Area in Sq. mtr</label>
                            </div>
                        </div>
            
                    <div class="row">
                        <p class="col">Whether beneficiary have been selected as per PMAY guidelines?</p>
                        <p>
                        	<input required name="pmayGuidelines" type="radio" id="test1" value = "1" />
                            <label for="test1">Yes</label>
                            <input required name="pmayGuidelines" type="radio" id="test2" value = "0"/>
                            <label for="test2">No</label>
                            </p>   
                        </div>
                        <div class="row">
                            <p class="col">Whether private partner has been selected through open competitive bidding ?</p>
                            <p><input required name="privatePartner" type="radio" id="test01" value = "1"/>
                                <label for="test01">Yes</label>
                                <input required name="privatePartner" type="radio" id="test02" value = "0"/>
                                <label for="test02">No</label>
                            </p>   
                        </div>
                      
                        <p style="margin-left:10px;">Incentives to Private Partner : </p>
                        <div class="row">
                                <div class="input-field col s3">
                                    <input required name="fsiArea" id="icon_prefix" type="number" class="validate" step = "0.01">
                                    <label for="icon_prefix">Existing FSI in the area</label>
                                </div>
                                    <div class="input-field col s3">
                                        <input required name="providedFsi" id="icon_prefix" type="number" class="validate" step = "0.01">
                                        <label for="icon_prefix">FSI provided in the project</label>
                                    </div>
                                        <div class="input-field col s3">
                                            <input required name="otherIncentives" id="icon_prefix" type="text" class="validate">
                                            <label for="icon_prefix">Other incentives, if any</label>
                                        </div>
                                </div>
                                <div class="row">
                                <p>Govt. grant required:</p>
                                        <div class="input-field col s3">
                                            <input required name="stateGrant" id="icon_prefix" type="number" class="validate" step = "0.01">
                                            <label for="icon_prefix">State grant, if any (Rs. In Lakhs)</label>
                                        </div>
                                        <div class="input-field col s3">
                                            <input required name="ulbGrant" id="icon_prefix" type="number" class="validate" step = "0.01">
                                            <label for="icon_prefix">ULB grant, if any (Rs. In Lakhs)</label>
                                        </div>
                                        <div class="input-field col s3">
                                            <input required name="beneficiaryShare" id="icon_prefix" type="number" class="validate" step = "0.01">
                                            <label for="icon_prefix">Beneficiary Share (Rs. In Lakhs)</label>
                                        </div>
                                </div>


                                <div class="row">
              <p class="col">Whether technical specification/dwelling unit design for housing have been ensured as per Indian Standards/NBC/State norms?</p>
              <p><input required name="technicalSpecification" type="radio" id="test3" value = "1"/>
                  <label for="test3">Yes</label>
                  <input required name="technicalSpecification" type="radio" id="test4" value = "0"/>
                  <label for="test4">No</label>
                </p>   
              </div>
              <br>
              <div class="row" >
                    <div class="input-field col s8 slumName">
                        <select required name="arrangementType">
                            <option value="">Type of temporary arrangement for beneficiaries during construction period provided in the project</option>
                            <option value="1">RENT</option>
                            <option value="2">TRANSIT SHELTER</option> 
                        </select>
                      </div>
            </div>
            <div class="row">
                <p class="col">Whether trunk infrastructure is existing or is being provided through AMRUT or any other scheme?</p>
                <p><input required name="trunkInfrastructure" type="radio" id="test5" value = "1"/>
                    <label for="test5">Yes</label>
                    <input required name="trunkInfrastructure" type="radio" id="test6" value = "0"/>
                    <label for="test6">No</label>
                    </p>   
                </div>
                           
                
                <div id = "22">
                        <p style="margin-left:10px;">Whether the provision of Civic infrastructure has been made as per applicable State norms/CPHEEO norms/IS Code/NBC?</p>
                        <br>
                        <div class="row">
                            <p class="col">Water Supply</p>
                            <p><input required name="waterSupply" type="radio" id="test7" value = "1"/>
                                <label for="test7">Yes</label>
                                <input required name="waterSupply" type="radio" id="test8" value = "0"/>
                                <label for="test8">No</label>
                              </p>   
                            </div>
                            <div class="row">
                                <p class="col">Sewerage</p>
                                <p><input required name="sewerage" type="radio" id="test9" value = "1"/>
                                    <label for="test9">Yes</label>
                                    <input required name="sewerage" type="radio" id="test10" value = "0"/>
                                    <label for="test10">No</label>
                                  </p>   
                                </div>
                            <div class="row">
                                  <p class="col">Road</p>
                                  <p><input required name="road" type="radio" id="test11" value = "1"/>
                                    <label for="test11">Yes</label>
                                    <input required name="road" type="radio" id="test12" value = "0"/>
                                    <label for="test12">No</label>
                                  </p>   
                                  </div>
                            <div class="row">
                                  <p class="col">Storm Water Drain</p>
                                  <p><input required name="waterDrain" type="radio" id="test13" value = "1"/>
                                      <label for="test13">Yes</label>
                                      <input required name="waterDrain" type="radio" id="test14" value = "0"/>
                                      <label for="test14">No</label>
                                  </p>   
                                  </div>
                            <div class="row">
                                  <p class="col">External Electrification</p>
                                  <p><input required name="electrification" type="radio" id="test15" value = "1"/>
                                    <label for="test15">Yes</label>
                                    <input required name="electrification" type="radio" id="test16" value = "0"/>
                                    <label for="test16">No</label>
                                  </p>   
                            </div>
            				<div class="row">
                                  <p class="col">Solid Waste Management:</p>
                                  <p><input required name="wasteManagement" type="radio" id="test125" value = "1"/>
                                    <label for="test125">Yes</label>
                                    <input required name="wasteManagement" type="radio" id="test126" value = "0"/>
                                    <label for="test126">No</label>
                                  </p>   
                            </div>
            
                                  <div class="row">
                                        <div class="input-field col s8">
                                            <input required name="anyOther" id="icon_prefix" type="text" class="validate">
                                            <label for="icon_prefix">Any other, specify</label>
                                        </div>
                                </div>

                                <div class="row">
                                        <div class="input-field col s8">
                                            <input required name="reason" id="icon_prefix" type="text" class="validate">
                                            <label for="icon_prefix">In case, any infrastructure has not been proposed,reasons thereof</label>
                                        </div>
                                </div>
                </div>
                <div class="row">
                        <p class="col">Whether disaster resistant features have been adopted in concept, design and implementation of the project?</p>
                        <p><input required name="disaster" type="radio" id="test17" value = "1"/>
                          <label for="test17">Yes</label>
                          <input required name="disaster" type="radio" id="test18" value = "0"/>
                          <label for="test18">No</label>
                        </p>   
                        </div>
          
                        <div class="row">
                            <p class="col">Whether Quality Assurance is part of the Project, if not,how it is proposed to be ensured?</p>
                            <p><input required name="qualityAssurance" type="radio" id="test19" value = "1"/>
                              <label for="test19">Yes</label>
                              <input required name="qualityAssurance" type="radio" id="test20" value = "0"/>
                              <label for="test20">No</label>
                            </p>   
                            </div>
              
                            <div class="row">
                                <p class="col">Whether O&M is part of Project, if yes, for how many years?</p>
                                <p><input required name="onm" type="radio" id="test21" value = "1"/>
                                  <label for="test21">Yes</label>
                                  <input required name="onm" type="radio" id="test22" value = "0"/>
                                  <label for="test22">No</label>
                                </p>   
                                </div>
                 
                                <div class="row">
                                  <p class="col">Whether encumbrance free land is available for the project or not?</p>
                                  <p><input required name="freeLand" type="radio" id="test23" value = "1"/>
                                    <label for="test23">Yes</label>
                                    <input required name="freeLand" type="radio" id="test24" value = "0"/>
                                    <label for="test24">No</label>
                                  </p>   
                                  </div>
                   
                                  <div class="row">
                                    <p class="col">Whether any innovative/cost effective/Green technology adopted in the project?</p>
                                    <p><input required name="technologyAdopted" type="radio" id="test25" value = "1"/>
                                      <label for="test25">Yes</label>
                                      <input required name="technologyAdopted" type="radio" id="test26" value = "0"/>
                                      <label for="test26">No</label>
                                    </p>   
                                    </div>
                                    
                                        <div class="row">
                                          <div class="input-field col s8">
                                            <textarea name="comments" id="textarea1" class="materialize-textarea"></textarea>
                                            <label for="textarea1">Comments of SLAC after techno economic appraisal of DPR</label>
                                          </div>
                                        </div>
          
                                        <div class="row">
                                          <div class="input-field col s8">
                                            <textarea name="projectBrief" id="textarea1" class="materialize-textarea"></textarea>
                                            <label for="textarea1">Project brief including any other information ULB/State would like to furnish</label>
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
<jsp:include page = "../../Footers/IA_Footer.jspf"/>
