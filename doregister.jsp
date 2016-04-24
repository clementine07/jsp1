<%@ page language="java" import="java.util.*"
 contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
 </head>
  
  <body>

<%
//防止中文乱码
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=UTF-8");

String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String passagain=request.getParameter("passagain");
String phone=request.getParameter("phone");
if(username==null)
     username="";
 if(email==null)
     email=""; 
 if(password==null)
     password="";  
 if(passagain==null)
     passagain="";     
 if(phone==null)
     phone="";     

if(!password.equals(passagain))
{
  
   response.setHeader("refresh","2;URL=register.jsp");
}

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
	    String sql="SELECT * FROM users  where username='"+username+"'";
	    ResultSet rs=statement.executeQuery(sql);
	    if(rs.next()){
	    out.println("用户名已存在！");
	    response.setHeader("refresh", "5;URL=register.jsp");
	    }
	    else
	    {
	        PreparedStatement pre;
	        String insert="insert into users values(?,?,?,?,?)";
	        pre=connection.prepareStatement(insert);
	        pre.setString(2, username);
	        pre.setString(3, password);
	        pre.setString(4, phone);
	        pre.setString(5, email);
	        int m=pre.executeUpdate();
	        if(m!=0)
	        {
	        	response.sendRedirect("login_success.jsp");
	        }
	        
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
  </body>
</html>