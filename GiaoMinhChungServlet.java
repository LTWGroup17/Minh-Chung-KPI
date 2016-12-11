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
 * Servlet implementation class GiaoMinhChungServlet
 */
@WebServlet("/GiaoMinhChungServlet")
public class GiaoMinhChungServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GiaoMinhChungServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		Connection con = DBConnect.getConnection();
		//int Username = Integer.parseInt(request.getParameter("username"));
		int nguoinhap = Integer.parseInt(request.getParameter("nguoinhap"));
		String ghichu = request.getParameter("ghichu");
		String ngayhoanthanh = request.getParameter("hancuoi");
		int id = Integer.parseInt(request.getParameter("idmucminhchung"));
		
		String query = "Update minhchung set nguoiduocgiao='"+nguoinhap+"'"
		+ ",ngayhoanthanh='"+ngayhoanthanh+"'"
		+ ",mota = '"+ghichu+"'"
				+ ",trangthai='Đã giao' where idmucmc = '"+id+"' ";
		try{
			Statement stmt = con.createStatement();
			int result = stmt.executeUpdate(query);
			if(result>0){
				response.sendRedirect("nguoigiaomoi.jsp");
				System.out.println(query);
			}
			else{
				response.sendRedirect("nguoigiaomoi.jsp");
			}
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println(e.toString());
		}
	}

}
