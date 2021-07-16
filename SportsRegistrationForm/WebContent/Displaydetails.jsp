<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>      
<!DOCTYPE html>
<html>
<head >
<link rel="stylesheet"
		href=
"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		.input-icons i {
			position: absolute;
		}

		.input-icons {
			width: 100%;
			margin-bottom: 5px;
			
		}

		.icon {
			padding: 10px;
			min-width: 40px;
		}

		.input-field {
			
		/*	padding:10px;  */
			text-align:left;
			 width: 100%;
  font-size: 20px;
  padding: 12px 20px 12px 45px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
		}
	</style><meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

#myInput {
  
  width: 100%;
  font-size: 16px;
  padding: 14px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>

  
</script>
</head>
<body style="background:url('banner.jpg');" >
  
<center><h1><font style="font-size:50px">SPORTS</font></h1></center>
<form  method="post">

<div class="input-icons">
			<i class="fa fa-search" style="font-size:25px;padding: 10px;color:grey;" ></i>
			<input class="input-field" type="text"  placeholder=" Search by Team id / Name / College " name="id">
			</div>
<div align="right"> <input type="submit" class="cart-btn" align="right"  value="Search" name="Search" style="font-size:20px; background-color: #4CAF50; border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius:10px; font-weight:bold;"
  /></div> 
<br>
    </form>



<table id="myTable">
  <tr class="header">
    <th style="width:8%;">Team ID</th>
    <th style="width:14%;">Name</th>
    <th style="width:10%;">Gender</th>
    <th style="width:14%;">DOB</th>
    <th style="width:10%;">Mobile</th>
    <th style="width:14%;">College</th>
    <th style="width:10%;">Sport</th>
    <th style="width:10%;">Place</th>
    <th style="width:5%;">Type</th>
    <th style="width:5%;">Amount</th>
    

  </tr>
 
    <%
    if(request.getParameter("Search") == null) {
    try {
		
    	String nk=request.getParameter("id");	 
    	 Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
         Statement st=con.createStatement();
         String qry="select * from Players";
         ResultSet rs=st.executeQuery(qry);
       
         while(rs.next()){
         
         	out.println("<tr>");
         	out.println("<td>");
         	out.println(rs.getString(1));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(2));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(3));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(4));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(5));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(6));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(7));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(8));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(9));
        	out.println("</td>");
        	out.println("<td>");
         	out.println(rs.getString(10));
        	out.println("</td>");
         	out.println("</tr>");
         	}
         	
         
         out.println("</table>");
    }
    
         catch(Exception e){
         
             out.println(e);
         }
    }
    if(request.getParameter("Search") != null) {
        try {
    		
        	String nk=request.getParameter("id");	 
        	 Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
             Statement st=con.createStatement();
             String qry="select * from Players";
             ResultSet rs=st.executeQuery(qry);
             while(rs.next()){
               if(nk.equals(rs.getString(1)) || nk.equals(rs.getString(6)) || nk.equals(rs.getString(2)))
               {
             	out.println("<tr>");
             	out.println("<td>");
             	out.println(rs.getString(1));
             	out.println("</td>");
             	out.println("<td>");
             	out.println(rs.getString(2));
             	out.println("</td>");
             	out.println("<td>");
             	out.println(rs.getString(3));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(4));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(5));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(6));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(7));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(8));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(9));
            	out.println("</td>");
            	out.println("<td>");
             	out.println(rs.getString(10));
            	out.println("</td>");
             	out.println("</tr>");
             	}
             }
             
             out.println("</table>");
        }
        
             catch(Exception e){
             
                 out.println(e);
             }
        }
                    
     
        %>
</table>



</body>
</html>