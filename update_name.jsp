<%@ page language="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- update_name.jsp-->
<html><head>
<meta htpp-equiv="Content-Type" contnt="text/html; charset=utf-8"/>
<meta name "viewport" content="width=device-width, initial-scale=1"/>
<title>pgJDBC select_passwd 실습 </title></head>
<body>
<%
Class.forName("org.postgresql.Driver"); //postgerSQl
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mydb","studx",gkrtod123A!");
Statement stmt = conn.createStatement();
int rec_no=stmt.executeUpdate("UPDATE studuser SET stud_name='이몽룡'WHERE stud_id='mrlee';");
ResultSet rs=stmt.executeQuery("SELECT*FROM badge;");
while(rs.next())) {
out.println(rs.getString("stud_id));
out.println(rs.getString("stud_passwd"));
}
rs.close();
stmt.close();
conn.close();
%>
  </body></html>
