<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <title>Responsive Login Page</title>
    <link rel="stylesheet" href="LoginStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

    <!--form area start-->
    
    <div class="form" align="center">
      <!--login form start-->
      <form class="login-form" action="" method="Post">
        

        <input class="user-input"  type="submit" name="b1" value="ADD / DELETE  PLAYER">
        <input class="user-input"  type="submit" name="b2" value="VIEW PLAYERS">
        <input class="user-input"  type="submit" name="b4" value="VIEW TIMINGS">
        <input class="btn" type="submit" name="b5" value="LOGOUT">
        
              </form>
              
              </div>
              
   <%
         // New location to be redirected
         if(request.getParameter("b1")!=null)
         {
         String site = new String("StoringDetails.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
         }
	   if(request.getParameter("b2")!=null)
	   {
	   String site = new String("Displaydetails.jsp");
	   response.setStatus(response.SC_MOVED_TEMPORARILY);
	   response.setHeader("Location", site); 
	   }
	   if(request.getParameter("b4")!=null)
	   {
	   String site = new String("DisplayTimings.jsp");
	   response.setStatus(response.SC_MOVED_TEMPORARILY);
	   response.setHeader("Location", site); 
	   }
	   if(request.getParameter("b5")!=null)
	   {
	   String site = new String("DLoginPage.html");
	   response.setStatus(response.SC_MOVED_TEMPORARILY);
	   response.setHeader("Location", site); 
	   }
      %>

    <script type="text/javascript">
    $('.options-02 a').click(function(){
      $('form').animate({
        height: "toggle", opacity: "toggle"
      }, "slow");
    });
    </script>

  </body>
</html>