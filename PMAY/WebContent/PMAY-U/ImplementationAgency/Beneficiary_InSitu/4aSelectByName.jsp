<%-- 
    Document   : selective_ben data
    Created on : 25-MAR-2018, 04:08:40 PM
    Author     : PLANET
--%>


<%@page import="beneficiary.InSitu.connection.*"%>

<%-- This page is used to display the details of the 
       non-verified customers, and then later verify them --%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <title>List of InSitu Beneficiary Based on Aadhar</title>

        <script src="../../js/jquery-3.3.1.js"></script>
        <script src="../../js/materialize.js"></script>
        <script src="../../js/material.js"></script>
        <script src="../../js/sendData.js"></script>
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/materialize.css">
        <link rel="stylesheet" href="../../css/material.css">
        <link rel="stylesheet" href="../../css/table.css">
        <link rel="stylesheet" href="../../css/Header_Final.css">

<jsp:include page = "../../Headers/IA_Header.jspf"/>

        <nav style="margin-top: -10px; width: 80%; margin-left: 10%" class="topHead">
	        <div class="nav-wrapper " style=" background-color: #bf360c ;">
	          <ul>
	          	<center>
	          		<h4 style= "font-size:20px; padding-top: 20px;">List of InSitu Beneficiary Based on Aadhar</h4>
	          	</center>
	          </ul>
	        </div>
	      </nav>
        <br><br>
        <div>
            <br>
            <form style="margin-top: -30px;" action="">
                <div class="">
                    <div style="overflow-x:auto; margin-left: 120px;"  >
                        <table id="table-delegate" border ="1" WIDTH="100%">
                            <tr><th>S_NO</th>
                                <th>SURVEY_NO</th>
                                <th>NAME</th>
                                <th style = "width:200px;">FATHERS_NAME</th>
                                <th>GENDER</th>
                                <th>CASTE</th>
                                <th>RELIGION</th>
                                <th>AADHAR NO.</th>
                                <th>edit</th>
                            </tr>
                            <%
                                //Creating the reference of type ResultSet
                                ResultSet RS;
                                //Creating the object of AdminVewRequestBean
                                BEN_InSitu_Register obj = new BEN_InSitu_Register ();                          //Using the static show_Customer_NV() function of Customer
                                String BenName = request.getParameter("benName");
                                RS = obj.selectRecord4A_Name(BenName);
                                int i = 1;
                                while (RS.next()) {
                            %>
                            <tr>
                                <td><%= i++%></td>

                                <td><%= RS.getString(1)%></td>
                                <td><%= RS.getString(9)%></td>
                                <td style = "width:200;"><%= RS.getString(11)%></td>
                                <td><%= RS.getString(10)%></td>
                                <td><%= RS.getString(18)%></td>
                                <td><%= RS.getString(17)%></td>
                                <td><%= RS.getString(16)%></td>


                                <td>
                                    <a href="4aEdit.jsp?surveyNo=<%= RS.getString(1)%>&old_Aadhar=<%= RS.getString(16) %>">click me</a>
                                </td>
                                
                                <%
                                    }
                                %>


                            </tr>
                        </table>

                    </div>
                </div>
                
                <script>
                    $("#table-delegate").on("click", "tr", function (e) {
                        var idx = $(e.currentTarget).index() + 1;
                        $("#delegation-idx").text(idx);
                        console.log('delegated6', idx);
                    <%

                    %>
                    });

                </script>
                <script language="javascript">
                    function editRecord(id) {
                        var f = document.form;
                        f.method = "post";
                        f.action = 'edit.jsp?id=' + id;
                        f.submit();
                    }
                </script>
            </form>

        </div>

<jsp:include page = "../../Footers/IA_Footer.jspf"/>