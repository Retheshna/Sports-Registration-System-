<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
    <!DOCTYPE html>
    <head> 
       <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
 <link rel="stylesheet" href="style2.css">
</head>
<body style="background-image:url('343549.jpg'); background-repeat:no-repeat; background-size:cover">
  
    
    
    <!-- Top navbar -->
    
         <br><br><br><br><br>      
      
      <!-- Mask -->
      
      <!-- Header container -->
<div align="center">
        <table id="myTable" style="width:70%">
  <tr class="header">
  <th style="width:20%;">S.No</th>
    <th style="width:40%;">Sport</th>
    <th style="width:40%;">Timings</th>  
    
   
    

  </tr>
  
  <%
int i=1;
    try {
		
    	 Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
         Statement st=con.createStatement();
         String qry="select * from Timings";
         ResultSet rs=st.executeQuery(qry);
       
         while(rs.next()){
         
         	out.println("<tr>");
         	out.println("<td>");
         	out.println(i++);
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(1));
         	out.println("</td>");
         	out.println("<td> <marquee>");
         	out.println(rs.getString(2));
         	out.println("</marquee></td>");
         	
              out.println("</tr>");
         	}
         	
         out.println("</table>");
         
    }
    
         catch(Exception e){
         
             out.println(e);
         }
    
                        
     
        %>
    </table>
    
    
</div>
    
    <br><br><br>
  
</body>