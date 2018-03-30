<%-- 
    Document   : Beneficiary Record
    Created on : 23-03-2018, 04:08:40 PM
    Author     : PLANET
--%>


<%@page import="reports.BEN.*"%>

<%-- This page is used to display the details of the 
       retrieve benificiary details , and then later verify them --%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <title>|Beneficiary Record|</title>
        <!-- Loading main css file -->
        <script src="../../js/jquery-3.3.1.js"></script>
        <script src="../../js/materialize.js"></script>
        <script src="../../js/material.js"></script>
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/materialize.css">
        <link rel="stylesheet" href="../../css/material.css">
      <!-- <link rel="stylesheet" href="../../css/table.css"> -->
        
        <style>

/* 
    Created on : 15 MARCH 2018, 5:18:35 PM
    Author     : HARIAN
*/
#tabletop
{
    color:#006064; 
}
table {
    
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 3px solid #ddd;
    table-layout: fixed;
}
table2 {

    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 3px solid #ddd;
table-layout: fixed;
}
th{color: green;}
th, td {
    text-align: center;
    padding: 8px;
    alignment-adjust: central;
    height: 20px;
    margin-right: 20px;
    width:200px;
}
tr{border-bottom: 1px solid #ddd;}
tr.header{
  background-color: #f1f1f1;
}
tr:nth-child(even){background-color: #f2f2f2}
tr:hover{background-color: #99ccff;}

input {margin-bottom: 5px; padding: 2px 3px; width: 98px;}
            
</style>
        
    <jsp:include page = "../../Headers/IA_Header.jspf"/>
    
        <div align="center">
            <nav class="aboutHead" style="width: 80%; background-color: #f4511e;">
                <div class="nav-wrapper" style=";width:100%; background-color: rgba(51,51,51,0.08);">
                    <center><h3 style=" padding-top:15px;">|Beneficiary Record|</h3></center>
                </div>
            </nav>
        </div>
        <form>
            <div align="center" style="margin-left:10%;" id="search_div" class="row">
                <div class="s4 input-field col">
                    <input name="cityName" id="search1" type="text" class="validate">
                    <label for="search1">Type to Search</label>
                </div>
                <div class="s4 input-field col">
                    <input name="cityName" id="search2" type="text" class="validate">
                    <label for="search2">Type to Search</label>
                </div>
                <div class="s4 input-field col">
                    <input name="cityName" id="search3" type="text" class="validate">
                    <label for="search3">Type to Search</label>
                </div>
                <!--<div><input name="Submit" type="submit"></div>-->
            </div>
        </form>
        <!--<br><br>-->
        <form  action="">
            <div>
                <div style="overflow-x:auto; margin-left: 120px;">
                    <table id="table2" border="1" WIDTH="100%" >
                        <tr>
                        <th><div style="margin-right:20px;">S_NO</div></th>
                        <th><div style="margin-right:20px;">SURVEY_NO</div></th>
                        <th><div style="margin-right:20px;">STATE</div></th>
                        <th><div style="margin-right:20px;">DISTRICT</div></th>
                        <th><div style="margin-right:20px;">CITY</div></th>
                        <th><div style="margin-right:20px;">WARD</div></th>
                        <th><div style="margin-right:20px;">SLUM_NAME</div></th>
                        <th><div style="margin-right:20px;">AREA_NAME</div></th>
                        <th><div style="margin-right:20px;">HFA_VERTICAL</div></th>
                        <th><div style="margin-right:20px;">FMLY_HEAD_NM</div></th>
                        <th><div style="margin-right:20px;">GENDER</div></th>
                        <th><div style="margin-right:20px;">FATHERS_NAME</div></th>
                        <th><div style="margin-right:20px;">FMLY_HEAD_AGE</div></th>
                        <th><div style="margin-right:20px;">HOUSE_NO</div></th>
                        <th><div style="margin-right:20px;">STREET</div></th>
                        <th><div style="margin-right:20px;">MOBILE_NO</div></th>
                        <th><div style="margin-right:20px;">OWNERSHIP</div></th>
                        <th><div style="margin-right:20px;">HOUSE_TYPE</div></th>
                        <th><div style="margin-right:20px;">NO_ROOMS</div></th>
                        <th><div style="margin-right:20px;">AADHAR_CARD</div></th>
                        <th><div style="margin-right:20px;">RELIGION</div></th>
                        <th><div style="margin-right:20px;">CASTE</div></th>
                        <th><div style="margin-right:20px;">BANK_NM</div></th>
                        <th><div style="margin-right:20px;">BANK_ACC_NO</div></th>
                        <th><div style="margin-right:20px;">BRANCH_NM</div></th>
                        <th><div style="margin-right:20px;">YEARS_STAY</div></th>
                        <th><div style="margin-right:20px;">SIZE_DU</div></th>
                        <th><div style="margin-right:20px;">DISABLE</div></th>
                        <th><div style="margin-right:20px;">MARITAL_STATUS</div></th>
                        <th><div style="margin-right:20px;">OWNS_HOUSE_LAND</div></th>
                        <th><div style="margin-right:20px;">EMPLOYMENT</div></th>
                        <th><div style="margin-right:20px;">AVG_MONTHLY_INC</div></th>
                        <th><div style="margin-right:20px;">BPL_CARD_NO</div></th>
                        <th><div style="margin-right:20px;">HOUSING_REQ</div></th>
                        <th><div style="margin-right:20px;">DGTL_SIGN_ULB</div></th>
                        <th><div style="margin-right:20px;">DATE_OF_CREATION</div></th>
                        <th style="margin-right:100px;width:450px;"><div >FMLY_HEAD_IMG_PATH</div></th>
                        </tr>
                    </table>
                    <table id="table" border="1" WIDTH="100%">
                        <%
                            //Creating the reference of type ResultSet
                            ResultSet RS;
                            //Creating the object of AdminVewRequestBean
                            Detailed_BEN obj = new Detailed_BEN ();
                            RS = obj.selectBEN_Detailed();
                            int i = 1;
                            while (RS.next()) {
                        %>
                        <tr>
                            <td><div style="margin-right:20px;"><%=i + "."%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(1)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(2)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(3)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(4)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(5)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(6)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(7)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(8)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(9)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(10)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(11)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(12)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(13)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(14)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(15)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(16)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(17)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(18)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(19)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(20)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(21)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(22)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(23)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(24)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(25)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(26)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(27)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(28)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(29)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(30)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(31)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(32)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(33)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(35)%></div></td>
                            <td><div style="margin-right:20px;"><%= RS.getString(36)%></div></td>
                            <td style="margin-right:100px;width:450px; overflow-wrap: normal;"><div><%= RS.getString(34)%></div></td>
                          </tr>
                          <%
                            }
                          %>
                    </table>
                    <script>
                        var $rows = $('#table tr');
                        $('#search1, #search2,#search3').on('input', function () {
                            var val1 = $.trim($('#search1').val()).replace(/ +/g, ' ').toLowerCase();
                            var val2 = $.trim($('#search2').val()).replace(/ +/g, ' ').toLowerCase();
                            var val3 = $.trim($('#search3').val()).replace(/ +/g, ' ').toLowerCase();

                            $rows.show().filter(function () {
                                var text1 = $(this).find('td:nth-child(2)').text().replace(/\s+/g, ' ').toLowerCase();
                                var text2 = $(this).find('td:nth-child(3)').text().replace(/\s+/g, ' ').toLowerCase();
                                var text3 = $(this).find('td:nth-child(4)').text().replace(/\s+/g, ' ').toLowerCase();
                                return !~text1.indexOf(val1) || !~text2.indexOf(val2) || !~text3.indexOf(val3);
                            }).hide();
                        });
                    </script>

                </div>
            </div>
        </form>
   
            <jsp:include page="../../Footers/IA_Footer.jspf"/>
 
