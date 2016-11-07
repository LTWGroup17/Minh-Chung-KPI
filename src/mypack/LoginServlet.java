package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		// lay thong so nguoi dung
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		//kiem tra username va password
		try{  
			// Ket noi database
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ltw_kpi","root","1234567");
			System.out.println("Connection DB commplete!");
			// Truy van du trong bang
			String query ="SELECT* FROM user where user='"+ username +"' and pass='"+password+"' and roleid="+gender;
			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery(query);
			System.out.println("hsaofsadifso");
			if (rs.next()){
				System.out.println("Query complete!");
				String ten= rs.getString("ten");
				switch(gender){
				case "1":
					response.sendRedirect("admindangnhap.jsp");
					break;
				case "2":
					response.sendRedirect("nguoinhapmoi.jsp");
					break;
				case "3":
					response.sendRedirect("nguoigiaomoi.jsp");
					break;
				case "4":
					response.sendRedirect("nguoigiaomoi.jsp");
					break;
				case "5":
					response.sendRedirect("nguoiktmoi.jsp");
					break;
				}
				HttpSession session = request.getSession();				
				session.setAttribute("ten", ten);
			}else{
				out.println("<meta charset='utf-8'>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Tài khoản hoặc mật khẩu không đúng nha !!!');");
				out.println("location='trangchu6.jsp';");
				out.println("</script>");
			}
			out.close();
			con.close();  
		}catch(Exception e){
			System.out.println(e.getMessage());
			System.out.println("Connection DB failed!");
		}  
	}  

}
