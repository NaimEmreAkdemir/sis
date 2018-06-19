<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.ConnectionManager"%>
<%
	String lesson = request.getParameter("DERS");
	String grade = request.getParameter("GRADE");
	String firstName = request.getParameter("FIRST_NAME");
	String lastName = request.getParameter("LAST_NAME");
	Connection conn = ConnectionManager.getConnection();
	Statement st = conn.createStatement();
	//ResultSet rs;
	int i = st
			.executeUpdate("insert into students(FIRST_NAME, LAST_NAME, DERS, GRADE) values ('"
					+ firstName
					+ "','"
					+ lastName
					+ "','"
					+ lesson
					+ "','" 
					+ grade 
					+ "')");
	if (i > 0) {
		response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
%>