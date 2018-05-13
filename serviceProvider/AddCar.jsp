<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd" >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Provider</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <script type="text/javascript">
            function insvalid()
            {
                if(document.form_insert.veid.value == "")
                    {
                        alert("Please Enter Vehicle ID");
                        return false;
                    }
               if(document.form_insert.brnd.value == "")
                    {
                        alert("Please Enter Brand");
                        return false;
                    }
               if(document.form_insert.mdl.value == "")
                    {
                        alert("Please Enter Model");
                        return false;
                    }
               if(document.form_insert.yr.value == "")
                    {
                        alert("Please Enter Year");
                        return false;
                    }
               if(document.form_insert.capac.value == "")
                    {
                        alert("Please Enter Capacity");
                        return false;
                    }
               if(document.form_insert.rprice.value == "")
                    {
                        alert("Please Enter Rent Price");
                        return false;
                    }
               if(document.form_insert.type.value == "")
                    {
                        alert("Please Enter Car Type");
                        return false;
                    }
               if(document.form_insert.veno.value == "")
                    {
                        alert("Please Enter Vehicle No");
                        return false;
                    }
               if(document.form_insert.man.value == "")
                    {
                        alert("Please Enter Manufacturer");
                        return false;
                    }
                if(document.form_insert.clr.value == "")
                    {
                        alert("Please Enter Color");
                        return false;
                    }
                if(document.form_insert.plate.value == "")
                    {
                        alert("Please Enter License Plate");
                        return false;
                    }
                if(document.form_insert.mile.value == "")
                    {
                        alert("Please Enter Current Mileage");
                        return false;
                    }
                return true;      
            }
            function clear()
            {
                veid.value = "";
                brnd.value = "";
                mdl.value = "";
                yr.value = "";
                capac.value = "";
                rprice.value = "";
                type.value = "";
                veno.value = "";
                man.value = "";
                phot.value = "";
                colr.value = "";
                plate.value = "";
                mile.value = "";
            }
        </script>
    </head>
    <body>
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Add Car</marquee>
                    </td>
                </tr>
                <tr>
                    <td class="header">                   
                    </td>
                </tr>
                <tr>
                    <td class="menu">
                       <ul>
                        <li><a href="AddCar.jsp">Add Car</a></li>
                        <li><a href="ViewRequest.jsp">View Service Request</a></li>
                        <li><a href="Accept/Deny.jsp">Update Request</a></li>
                        <li><a href="ViewTransaction.jsp">View Transactions</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                       <a href="Login.jsp">Logout</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2>Add Record</h2>
                    </td>
                </tr>
                <tr>          
                    <form name="form_insert" action="insert.jsp" method="post" onsubmit="return insvalid();">
                        <table border="0" align="center">
                               <tr>
                                   <td class="lbl_txt">Vehicle ID :</td>
                                   <td><input type="text" name="veid" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Brand :</td>
                                   <td><input type="text" name="brnd" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Model :</td>
                                   <td><input type="text" name="mdl" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Year :</td>
                                   <td><input type="text" name="yr" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Capacity :</td>
                                   <td><input type="text" name="capac" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Rent Price :</td>
                                   <td><input type="text" name="rprice" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Car Type :</td>
                                   <td><input type="text" name="type" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Vehicle Number :</td>
                                   <td><input type="text" name="veno" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Manufacturer :</td>
                                   <td><input type="text" name="man" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Photo :</td>
                                   <td><input type="text" name="phot" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Color :</td>
                                   <td><input type="text" name="colr" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">License Plate :</td>
                                   <td><input type="text" name="plate" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Current Mileage :</td>
                                   <td><input type="text" name="mile" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td>
                                       <input type="submit" name="submit" value="Insert" class="btn" />
                                   </td>
                                   <td>
                                       <input type="reset" value="Reset" name="reset"  class="btn" onclick="return clear();" />
                                   </td>
                               </tr>
                               <tr>
                                 <td align="center" colspan="2">
                                    <a href="View.jsp">View Cars</a>
                                 </td>
                               </tr>
                        </table>                   
                    </form>
                </tr>
                <tr>
                    <table border="0" width="100%" height="100%">
                        <tr>
                          <td class="footer">
                            <ul class="footer_ul">
                                <li><a href="AddCar.jsp">Add Car</a></li>
                                <li><a href="ViewRequest.jsp">View Service Request</a></li>
                                <li><a href="Accept/Deny.jsp">Update Request</a></li>
                                <li><a href="ViewTransaction.jsp">View Transactions</a></li>
                            </ul>
                          </td>
                       </tr>
                       <tr>
                          <td class="footer">
                            <h3>Developed by : Webtek Finals Group 3 &copy;2018</h3>
                          </td>
                       </tr>
                       
                    </table>
                </tr>
          </table>
    </body>
</html>