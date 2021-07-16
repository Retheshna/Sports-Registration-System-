package com.srccodes.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginVerification
 */
@WebServlet("/LoginVerification")
public class LoginVerification extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginVerification() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("user");
		String password=request.getParameter("password");
		String usertype=request.getParameter("com");
		out.println("<script type=\"text/javascript\">");
		if(usertype.equals("Coordinator"))
		{
			if(name.equals("admin") && password.equals("2121"))
			{
				
				out.println("alert('Login Successful');");
				out.println("location.replace('CoordinatorOptions.jsp')");
			}
			else
			{
				out.println("alert('InCorrect Credentials');");
				out.println("location.replace('DLoginPage.html')");
			}
				
		}
		if(usertype.equals("Volunteer"))
		{
			if(name.equals("volunteer") && password.equals("1212"))
			{
				
				out.println("alert('Login Successful');");
				out.println("location.replace('VolunteerOptions.jsp')");
			}
			else
			{
				out.println("alert('InCorrect Credentials');");
				out.println("location.replace('DLoginPage.html')");
			}
				
		}
		
		out.println("</script>");
			
		
				
				
	}

}
