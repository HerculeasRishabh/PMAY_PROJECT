<%-- 
    Document   : 7cSelectAllEdit data
    Created on : 25-MAR-2018, 04:08:40 PM
    Author     : PLANET
--%>


<%@page import="dpr.BLC.connection.*"%>

<%-- This page is used to display the details of the 
       non-verified customers, and then later verify them --%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, attach.BLC.DPR.connection.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">
<title>Complete list of all Rejected DPR's</title>
<!-- Loading third party fonts -->

<!-- Loading main css file ->
        <link rel="stylesheet" href="../css/header.css">-->
<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/materialize.js"></script>
<script src="../js/material.js"></script>
<script src="../js/sendData.js"></script>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/materialize.css">
<link rel="stylesheet" href="../css/material.css">
<!-- <link rel="stylesheet" href="../../css/table.css"> -->



<style>

/* 
    Created on : 15 MARCH 2018, 5:18:35 PM
    Author     : HARIAN
*/
#tabletop {
	color: #006064;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 80%;
	border: 3px solid #ddd;
	table-layout: fixed;
}

table2 {
	border-collapse: collapse;
	border-spacing: 0;
	width: 80%;
	border: 3px solid #ddd;
	table-layout: fixed;
}

th {
	color: green;
}

th, td {
	text-align: center;
	padding: 8px;
	alignment-adjust: central;
	height: 20px;
	margin-right: 20px;
	width: 200px;
}

tr {
	border-bottom: 1px solid #ddd;
}

tr.header {
	background-color: #f1f1f1;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

tr:hover {
	background-color: #99ccff;
}
</style>


<jsp:include page="../Headers/IA_Header.jspf" />
<%
	String sign = (String) session.getAttribute("ULB_SIGN");
	String name = (String) session.getAttribute("ULB_NAME");
	String state = (String) session.getAttribute("ULB_STATE");
	//System.out.print("branch code:"+bcode+"\n");
	String district = (String) session.getAttribute("ULB_DISTRICT");
%>
<nav class="aboutHead"
	style="width: 80%; margin-left: 10%; background-color: red;">
	<div class="nav-wrapper"
		style="margin-left: 10%; width: 80%; background-color: green;">
		<center>
			<h3 style="margin-left: 60px;">Rejected DPR's</h3>
		</center>
	</div>
</nav>
<br>
<br>
<div>
	<form action="">
		<div class="">
			<div style="overflow-x: auto; margin-left: 120px;">
				<table id="table-delegate" border="1" WIDTH="100%">
					<tr>
						<th><div>S.No.</div></th>
						<th><div>BLC_PROJECT_NO</div></th>
						<th><div>STATE</div></th>
						<th><div>DISTRICT</div></th>
						<th><div>CITY</div></th>
						<th><div>PORJECT_NM</div></th>
						<th><div>PROJECT_CODE</div></th>
						<th><div>SLNA_NM</div></th>
						<th><div>IA_NAME</div></th>
						<th><div>PROJECT_COST</div></th>
						<th><div>TOTAL BENEFICIRIES</div></th>
						<th><div>ATTACHED BENEFICIRIES</div></th>
						<th><div>PMAY_GUIDELINES</div></th>
						<th><div>OWNERSHIP</div></th>
						<th><div>BUILDING_PLAN</div></th>
						<th><div>CENTRAL_GRANT</div></th>
						<th><div>STATE_GRANT</div></th>
						<th><div>ULB_GRANT</div></th>
						<th><div>BEN_SHARE</div></th>
						<th><div>TECH_SPECIFICATION</div></th>
						<th><div>ENSURED_BALANCE_COST</div></th>
						<th><div>WATER</div></th>
						<th><div>SEWERAGE</div></th>
						<th><div>ROAD</div></th>
						<th><div>WATER_DRAIN</div></th>
						<th><div>ELECTRIFICATION</div></th>
						<th><div>WASTE_MANAGEMENT</div></th>
						<th><div>OTHER_INFRA</div></th>
						<th><div>DESASTER_RESISTANT</div></th>
						<th><div>DEMAND_SURVEY</div></th>
						<th><div>CITY_WIDE_INTEGRATED</div></th>
						<th><div>SECC_VALIDATION</div></th>
						<th><div>ENSURE_DBT</div></th>
						<th><div>GEO_TAGGING_DPR</div></th>
						<th><div>GREEN_TECH</div></th>
						<th><div>SLAC_COMMENT</div></th>
						<th><div>OTHER_INFO</div></th>
						<th><div>SUBMISSION_TO_SLSMC</div></th>
						<th><div>STATUS</div></th>
						<th><div>SLSMC_COMMENT</div></th>
						<th><div>SLSMC_APPROVAL</div></th>
						<th><div>CSMC_APPROVAL</div></th>
						<th><div>ULB_DIGITAL_SIGN</div></th>
						<th><div>SLSMC_DIGITAL_SIGN</div></th>
						<th><div>CSMC_DIGITAL_SIGN</div></th>
						<th><div></div>Edit</th>
					</tr>
					<%
						//Creating the reference of type ResultSet
						ResultSet RS;
						int attachedBEN;
						
						AttachBEN obj2 = new AttachBEN ();
						
						
						//Creating the object of AdminVewRequestBean
						DPR_BLC_connection obj = new DPR_BLC_connection(); //Using the static show_Customer_NV() function of Customer

						RS = obj.selectBLC_SLAC_Rejected(state, district);

						
						int i = 1;
						while (RS.next()) {
						    attachedBEN = obj2.numberAttachedBEN(RS.getInt(1));
					%>
					
					<tr>
						<td><%=i++%></td>

						<td><div><%=RS.getString(1)%></div></td>
						<td><div><%=RS.getString(2)%></div></td>
						<td><div><%=RS.getString(3)%></div></td>
						<td><div><%=RS.getString(4)%></div></td>
						<td><div><%=RS.getString(5)%></div></td>
						<td><div><%=RS.getString(6)%></div></td>
						<td><div><%=RS.getString(7)%></div></td>
						<td><div><%=RS.getString(8)%></div></td>
						<td><div><%=RS.getString(9)%></div></td>
						<td><div><%= (RS.getInt(10) + RS.getInt(11) + RS.getInt(12) + RS.getInt(13)
						+ RS.getInt(14) + RS.getInt(15) + RS.getInt(16) + RS.getInt(17)
						+ RS.getInt(18) + RS.getInt(19))
						%> </div></td>
						<td><div><%= attachedBEN %></div></td>
						<td><div><%=RS.getString(20)%></div></td>
						<td><div><%=RS.getString(21)%></div></td>
						<td><div><%=RS.getString(22)%></div></td>
						<td><div><%=RS.getString(23)%></div></td>
						<td><div><%=RS.getString(24)%></div></td>
						<td><div><%=RS.getString(25)%></div></td>
						<td><div><%=RS.getString(26)%></div></td>
						<td><div><%=RS.getString(27)%></div></td>
						<td><div><%=RS.getString(28)%></div></td>
						<td><div><%=RS.getString(29)%></div></td>
						<td><div><%=RS.getString(30)%></div></td>
						<td><div><%=RS.getString(31)%></div></td>
						<td><div><%=RS.getString(32)%></div></td>
						<td><div><%=RS.getString(33)%></div></td>
						<td><div><%=RS.getString(34)%></div></td>
						<td><div><%=RS.getString(35)%></div></td>
						<td><div><%=RS.getString(36)%></div></td>
						<td><div><%=RS.getString(37)%></div></td>
						<td><div><%=RS.getString(38)%></div></td>
						<td><div><%=RS.getString(39)%></div></td>
						<td><div><%=RS.getString(40)%></div></td>
						<td><div><%=RS.getString(41)%></div></td>
						<td><div><%=RS.getString(42)%></div></td>
						<td><div><%=RS.getString(43)%></div></td>
						<td><div><%=RS.getString(44)%></div></td>
						<td><div><%=RS.getString(45)%></div></td>
						<td><div><%=RS.getString(46)%></div></td>
						<td><div><%=RS.getString(48)%></div></td>
						<td><div><%=RS.getString(49)%></div></td>
						<td><div><%=RS.getString(50)%></div></td>
						<td><div><%=RS.getString(51)%></div></td>
						<td><div><%=RS.getString(52)%></div></td>
						<td><div><%=RS.getString(53)%></div></td>
						<td><a href="7cSLSMC_Feedback.jsp?Blc_Project_No=<%=RS.getInt(1)%>">click
								me</a></td>
						<%
							}
						%>
					</tr>
				</table>
			</div>
		</div>
	</form>
</div>
<jsp:include page="../Footers/IA_Footer.jspf" />