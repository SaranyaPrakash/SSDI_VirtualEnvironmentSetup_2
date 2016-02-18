<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ssdi assignment 2 !!</title>
</head>
<body>
<table border="1">
<tr>
   <th>name</th>
   <th>size</th>
   <th>price</th>
</tr>
<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/SSDI","root","Sheeba100");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from chocolates");
while(rs.next())
{
	String name = rs.getString(1);
	String size = rs.getString(2);
	int price = rs.getInt(3); %>
<tr>
<td><% out.println(name); %></td>
<td><% out.println(size); %></td>
<td><% out.println(price); %></td>
</tr>
<% }con.close(); %>
</table>
</body>
</html>