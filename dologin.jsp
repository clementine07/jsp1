<%@ page language="java" import="java.util.*"
 contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
 <% 
//防止中文乱码
 request.setCharacterEncoding("utf-8");
 response.setCharacterEncoding("utf-8");
 response.setContentType("text/html;charset=UTF-8");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  if(username==null)
      username="";
  if(password==null)
      password="";    
 if(username==""||password=="")
	 response.sendRedirect("login_failure.jsp");

  try {
		// 加载驱动程序
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection =DriverManager.getConnection(
				"jdbc:mysql://127.0.0.1:3307/ds?useUnicode=true&character=utf-8",
				"root", "usbw");
		if(!connection.isClosed())
			System.out.println("Succeeded connecting to the Database!");
		// statement用来执行SQL语句
		Statement statement = connection.createStatement();
		// 要执行的SQL语句
		String sql="SELECT * FROM users  where username='"
		+username+"' and password='"+password+"'";
		// 执行SQL语句并返回结果集
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next()) 
		{
			 session.setAttribute("loginUser", username);
		     //于是 request.getRequestDispacher('url').forward请求转发和重定向派上了用场。而重定向是无法共享数据的，因此只能使用请求转发。
		     request.getRequestDispatcher("login_success.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("login_failure.jsp");
		}
		// 关闭结果集
		rs.close();
		// 关闭连接
		connection.close();
	} catch(ClassNotFoundException e) {
		System.out.println("Sorry,can`t find the Driver!");
		e.printStackTrace();
	} catch(SQLException e) {
		e.printStackTrace();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>


