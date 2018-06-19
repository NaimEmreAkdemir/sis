<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
    response.setHeader("Cache-Control","no-store, must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1);
    new java.util.Date();
    %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Information Systems</title>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>

</head>
<body>
	<div id="first">
	<div id="main">
		<img class="left" src="icons/edu.png" width="180" height="150" alt="logo"/>	

		<h1><center>Student Information  Systems</center></h1>
	</div>

	<div id="other">
   <form method="post" action="LoginServlet"onsubmit="return validateForm()"  name="myForm">
            <center>
            <table border="2" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Student Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="un" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pw" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> <a href="teacherspage.jsp">Instructor's Login</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        </div>
     <div id="menu">
       <table border="1" width="1000" height="650">
                <!--<h1>Information Systems</h1>-->
        <tr>
            <td> <center><a href="index.jsp"> Home</a></center> </td>
            <td > <center><a href="h.html"></a>Contact</center></td>
            <td > <center><a href="r.html"></a>FAQ  </center></td>     
        </tr>

</table>
 </div>
	</div>
</body>
</html>




 