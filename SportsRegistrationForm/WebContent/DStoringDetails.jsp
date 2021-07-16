<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>How to Design Login & Registration Form Transition</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="StoringStyle.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
</head>
<body style=" background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%, #b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);
">
<form method="post">
  <div class="cont">
    <div class="form sign-in">
      <h2>Registration Form</h2>
      <label>
        <span>Team Id</span>
        <input type="text" name="email">
      </label>
      <label>
        <span>Name</span>
        <input type="text" name="password">
      </label>
      <label>
        <span>Gender</span>
<div>
  <tr>
        <td><input type="radio" name="g" value="Male" id="test1"/>Male &nbsp; <input type="radio" name="g" value="Female" id="test2"/>Female</td>
       
       
    </tr>
       <!--   <input type="radio" name="g" value="Male" id="test1"/>
         <label for="test1">Male</label> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="g" value="Female" id="test2"/>
         <label for="test2">Female</label> -->
         </div>
      </label>
      <label>
        <span>Date of Birth</span>
        <input type="text" name="password">
      </label>
      <label>
        <span>Mobile</span>
        <input type="number" name="password">
      </label>
      <label>
        <span>College</span>
        <input type="number" name="password">
      </label>
      <label>
        <span>Sport</span>
        <select name="sport">
              <option value="">Select</option>
              <option value="basketball">BASKET BALL</option>
              <option value="foot ball">FOOT BALL</option>
              <option value="cricket">CRICKET</option>
              <option value="throwball">THROW BALL</option>
              <option value="volleyball">VOLLEY BALL</option>
           </select>
      </label>
      <label>
        <span>Place</span>
        <input type="text" name="password">
      </label>
      <label>
        <span>Type</span>
        <input type="radio" name="type" value="Captain" id="test1"/>
        <label for="test1">Captain</label> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="type" value="Member" id="test2" />
       <label for="test2">Member</label>
      </label>
      <label>
        <span>Amount</span>
         <input type="radio" name="amount" value="paid" id="test1"/>
      <label for="test1">Paid</label> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="amount" value="notpaid" id="test2"/>
     <label for="test2">Not Paid</label> 
     </label> 
     
     
     
     
      
      
      
<button class="submit" type="button">Sign In</button>
      </div> 
      
</form>      

    </body>
</html>