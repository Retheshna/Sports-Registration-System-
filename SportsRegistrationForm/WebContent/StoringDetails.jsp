<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Form</title>
	 <link rel="stylesheet" href="style1.css"> 
	 <style type="text/css">
	 label{
	 
	 font-weight:bold;
	 color: black;
	 
	 }
	 .inputfield{
	 background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%, #b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);
	 
	 
	 
	 
	 }
	 
	 </style>
</head>
<body style=" background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%, #b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);
">


  <section id="header">
    <div class="header container">
      <div class="nav-bar">
        <div class="brand">
          <a href="#hero"><h1>S  R  M         Andhra Pradesh</h1></a>
        </div>
        <div class="nav-list">
          <div class="hamburger"><div class="bar"></div></div>
          <ul>
            <li><a href="home.html">Home</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>

<div class="wrapper">
    <div class="title" style="font-size:30px">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form
    </div>
    <form method="post">
    <div class="form">
       <div class="inputfield">
          <label style="color:black">TeamID:</label>
          <input type="text" class="input" name="id">
       </div>  
       <div class="inputfield">
          <label style="color:black">NAME:</label>
          <input type="text" class="input" name="name">
       </div>  
        <div class="inputfield">
          <label style="color:black">Gender</label>
         
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="g" value="Male" id="test1"/>
      <label style="color:black" for="test1">Male</label> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="g" value="Female" id="test2"/>
     <label style="color:black" for="test2">Female</label> 
       </div>  
       <div class="inputfield">
          <label style="color:black">Date Of Birth</label>
          <input type="date" class="input" name="dob">
       </div>  
      <div class="inputfield">
          <label style="color:black">Mobile num</label>
          <input type="text" class="input" name="mobile">
       </div>
       <div class="inputfield">
          <label style="color:black">University/College Name</label>
          <input type="text" class="input" name="college">
       </div>
        
        <div class="inputfield">
          <label style="color:black">SPORT</label>
          <div class="custom_select" >
            <select name="sport">
              <option value="">Select</option>
              <option value="basketball">BASKET BALL</option>
              <option value="foot ball">FOOT BALL</option>
              <option value="cricket">CRICKET</option>
              <option value="throwball">THROW BALL</option>
              <option value="volleyball">VOLLEY BALL</option>
           </select>
          </div>
       </div> 
        <div class="inputfield">
          <label style="color:black">Place</label>
          <input type="text" class="input" name="place">
       </div> 
    
      <div class="inputfield">
          <label style="color:black">Type</label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="type" value="Captain" id="test1"/>
      <label style="color:black" for="test1">Captain</label> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="type" value="Member" id="test2"/>
     <label style="color:black" for="test2">Member</label>
       </div> 
       <div class="inputfield">
          <label style="color:black">Amount</label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="amount" value="paid" id="test1"/>
      <label style="color:black" for="test1">Paid</label> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="amount" value="notpaid" id="test2"/>
     <label style="color:black" for="test2">Not Paid</label>
       </div> 
      <div class="inputfield">
        <input   style="background-image: linear-gradient(to right, #36d1dc , #5b86e5); font-weight:bold;" type="submit" value="R e g i s t e r " class="btn" name="Register">
      </div>
      <div class="inputfield">
        <input style="background-image: linear-gradient(to right, #36d1dc , #5b86e5); font-weight:bold;" type="submit" value="U p d a t e "  name="b1" class="btn">
      </div>
      <div class="inputfield">
        <input style="background-image: linear-gradient(to right, #36d1dc , #5b86e5); font-weight:bold;" type="submit" value="D e l e t e "  name="b2" class="btn">
      </div>
      
      </form>
    </div>
    </div> 
<%
int conf=0;
if(request.getParameter("Register") != null){
	String id=request.getParameter("id");
    String name=request.getParameter("name");
    String gen=request.getParameter("g");
    String dob=request.getParameter("dob");
    String mobile=request.getParameter("mobile");
    String college=request.getParameter("college");
    String sport=request.getParameter("sport");
    String place=request.getParameter("place");
    String type=request.getParameter("type");
    String amount=request.getParameter("amount");
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
    Statement st=con.createStatement();
    String query="select count(*) from players where id='"+id+"'"+" and name='"+name+"'";
    ResultSet rs=st.executeQuery(query);
    rs.next();
    conf=rs.getInt(1);
    if(conf==0)
    {
    	st.executeUpdate("insert into Players(id,Name,gender,dob,mobile,college,sport,place,type,amount)values('"+id+"','"+name+"','"+gen+"','"+dob+"','"+mobile+"','"+college+"','"+sport+"','"+place+"','"+type+"','"+amount+"')");
    }
    else
    {
    	%>
    	<script>
    	    alert("Player already exists");
    	  
    	</script>
    	<% 
    }
    if(conf==0)
    {
    	
    
%>
<script>

    alert("Player Registered Successfully ");
  
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
if(request.getParameter("b1") != null){
	String id=request.getParameter("id");
    String name=request.getParameter("name");
    String gen=request.getParameter("g");
    String dob=request.getParameter("dob");
    String mobile=request.getParameter("mobile");
    String college=request.getParameter("college");
    String sport=request.getParameter("sport");
    String place=request.getParameter("place");
    String type=request.getParameter("type");
    String amount=request.getParameter("amount");
    
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
    Statement st=con.createStatement();
    PreparedStatement ps = null;
    if(!dob.equals(""))
    {
    	 String query="UPDATE Players SET dob='"+dob+"' WHERE id='"+id+"' and name='"+name+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    if(!mobile.equals(""))
    {
    	 String query="UPDATE Players SET mobile='"+mobile+"' WHERE id='"+id+"' and name='"+name+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    if(!college.equals(""))
    {
    	 String query="UPDATE Players SET college='"+college+"' WHERE id='"+id+"' and name='"+name+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    if(!sport.equals(""))
    {
    	 String query="UPDATE Players SET sport='"+sport+"' WHERE id='"+id+"' and name='"+name+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    if(!place.equals(""))
    {
    	 String query="UPDATE Players SET place='"+place+"' WHERE id='"+id+"' and name='"+name+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    if(!type.equals(""))
    {
    	 String query="UPDATE Players SET type='"+type+"' WHERE id='"+id+"' and name='"+name+"'";
    	    st.executeUpdate(query);
    	    i=1; 
    }
    if(!amount.equals(""))
    {
    	 String query="UPDATE Players SET amount='"+amount+"' WHERE id='"+id+"' and name='"+name+"'";
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
	alert("Player Details Updated Successfully");
	</script>
	<%
}
else{
%>
	
	<script>
	alert("Player Details Not Updated");
	</script>
	<%
}
}
    %>	
    
   <% 
       //Deletion
 int a=0;
 if(request.getParameter("b2") != null){
	 String id=request.getParameter("id");
	    String name=request.getParameter("name");
	 try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sports","root","2121");
         Statement st=con.createStatement();
         String qry="select * from Players";
         ResultSet rs=st.executeQuery(qry);
         while(rs.next()){
         	if(id.equals(rs.getString(1)) && name.equals(rs.getString(2))){
         		 String query="DELETE FROM Players WHERE id='"+id+"' and name='"+name+"'";
                 st.executeUpdate(query);
                 a=0;
                 break;
         	}
         	else{
         		 a=1;
         	}
         	
         }
         if(a==1){
        	 %>    
      	 	<script>
      	     alert("Details not Found");
      	     </script>
      	<% 
         }
         else{
	 %>    
 	<script>
     alert("Player Deleted Succesfully");
     </script>
<% 
         }
 }
catch(Exception e){
	 %>    
	 	<script>
	     alert("Deletion Unsuccessfull");
	     </script>
	<% 
}
 }
%>
    
 

</body>

</html>
