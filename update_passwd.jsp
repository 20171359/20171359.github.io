<%@ page language="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- update_passwd.jsp-->
<html><head>
<meta htpp-equiv="Content-Type" contnt="text/html; charset=utf-8"/>
<meta name "viewport" content="width=device-width, initial-scale=1"/>
<title>pgJDBC update_passwd 실습 </title></head>
<body>
<%
Class.forName("org.postgresql.Driver"); //postgerSQl
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mydb","studx",gkrtod123A!");
Statement stmt = conn.createStatement();
int rec_no=stmt.executeUpdate("UPDATE badge SET stud_passwd='1234x'WHERE stud_id='kdhong';");
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
