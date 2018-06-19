<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.ConnectionManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Example</title>
</head>
<body>
 <%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	Connection con = ConnectionManager.getConnection();
	Statement st = con.createStatement();

	ResultSet rs;
	rs = st.executeQuery("select * from teachers where username='"
			+ userName + "' and password='" + password + "'");
	
%>


<%
    if ((session.getAttribute("username") == null)
    || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<ahref="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("username")%>
<ahref='logout.jsp'>Log out</a>
<%
    }	response.sendRedirect("registerpage.jsp");
%>

  
    </body>
</html>

  