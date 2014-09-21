<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Testing connection to database studentDB</title>
</head>
<body>
	
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<% 

Class.forName("com.mysql.jdbc.Driver");
Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:8888/studentdb","derek","pass");
Statement stmnt = connect.createStatement();
ResultSet result = stmnt.executeQuery("select * from  class101");



String rowContents;

while (result.next()) {
	out.println("--");
	out.println(String.valueOf(result.getObject(1)));
	out.println(String.valueOf(result.getObject(2)));
	out.println(String.valueOf(result.getObject(3)));
	out.println("--");
  }



%>


<!--   Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/
test","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where user_id='"+userid+"'"); -->

</body>
</html>