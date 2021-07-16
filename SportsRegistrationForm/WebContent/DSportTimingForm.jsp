<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <style type="text/css">
  select{
    text-align-last:center;
    padding-left:33%;
}</style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Sport Timing Form</title>
    <link rel="stylesheet" href="LoginStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

    <!--form area start-->
    
    <div class="form" align="center">
      <!--login form start-->
      <form class="login-form" method="Post">
        <i class="fas fa-user-circle"></i>
        <input class="user-input" type="text" name="sport" placeholder="SPORT" required>
        <input class="user-input" type="text" name="timing" placeholder="TIMINGS" required>
        <input class="btn" type="submit" name="save" value="Save"><br>
        <br>
        <input class="btn" type="submit" name="update" value="Update">
              </form>
              
              </div>
              
   

    <script type="text/javascript">
    $('.options-02 a').click(function(){
      $('form').animate({
        height: "toggle", opacity: "toggle"
      }, "slow");
    });
    </script>
    
<%
int conf=0;
if(request.getParameter("save") != null){
	String sport=request.getParameter("sport");
    String timing=request.getParameter("timing");
    
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
    Statement st=con.createStatement();
    String query="select count(*) from Timings where sport='"+sport+"'";
    ResultSet rs=st.executeQuery(query);
    rs.next();
    conf=rs.getInt(1);
    if(conf==0)
    {
    	st.executeUpdate("insert into Timings(Sport,Timings)values('"+sport+"','"+timing+"')");
    }
    else
    {
    	%>
    	<script>
    	    alert("Sport Timing Already Assigned");
    	  
    	</script>
    	<% 
    }
    if(conf==0)
    {
    	
    
%>
<script>

    alert(" Saved Successfully ");
  
</script>
<%    
    }
    }catch(Exception e){
    	
%>      
    	<script>
        alert(Integer.toString(conf));
    
  
        </script>
<% 
    }
    
}
    %> 
    
 <%    
    //Updation
int i=0;
if(request.getParameter("update") != null){
	String sport=request.getParameter("sport");
    String timing=request.getParameter("timing");
    
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
    Statement st=con.createStatement();
    PreparedStatement ps = null;
    if(!timing.equals(""))
    {
    	 String query="UPDATE timings SET Timings='"+timing+"' WHERE Sport='"+sport+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    
    }
    catch(Exception e){
    	if(i!=1)	
     i=0;
    }
    




if(i==1){
	%>
	
	<script>
	alert("Updated Successfully");
	</script>
	<%
}
else{
%>
	
	<script>
	alert("Updation Unsuccessfull");
	</script>
	<%
}
}
    %>	
     
   


  </body>
</html>