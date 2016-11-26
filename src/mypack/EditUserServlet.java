package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.DBConnect;

/**
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/EditUserServlet")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		Connection con = DBConnect.getConnection();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		String fullname = request.getParameter("fullname");
		String phone = request.getParameter("phone");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		int role = Integer.parseInt(request.getParameter("role"));
		
		String query = "Update user set ten='"+fullname+"'"
				+ ",tel='"+phone+"'"
				+ ",nsinh = '"+birthday+"'"
						+ ",roleid='"+role+"'"
								+ ",email='"+email+"' where user='"+ id +"'";
		try{
			Statement stmt = con.createStatement();
			int result = stmt.executeUpdate(query);
			if(result>0){
				response.sendRedirect("admindangnhap.jsp");
			}
			else{
				response.sendRedirect("adminSuataikhoan.jsp");
			}
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println(e.toString());
		}
	}

}
