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
 * Servlet implementation class ThemMinhChungServlet
 */
@WebServlet("/ThemMinhChungServlet")
public class ThemMinhChungServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemMinhChungServlet() {
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
		
		String tenmucmc = request.getParameter("tenmucmc");
		String root = request.getParameter("root");
		String query = "INSERT INTO minhchung(tenmucmc,idroot,trangthai) VALUES ('"+tenmucmc+"', '"+root+"', 'Chưa giao')";
		
		
		try{
			Statement stmt = con.createStatement();
			int result = stmt.executeUpdate(query);
			if(result!=0){
				response.sendRedirect("nguoiquydinhmoi.jsp");
			}
			else{
				response.sendRedirect("nguoiquydinhmoi.jsp");
			}
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println(e.toString());
		}
	}

}
