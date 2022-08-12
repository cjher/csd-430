<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
 %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Server Side Development</title>
</head>
<body>
<%--	
	Using Eclipse, create a JSP file, starting with the “Hello World” example in our text. 
		Add several items expanding on this example having a minimum of 3 scriptlet sections in your code.
	Thoroughly test your code to verify it functions correctly and displays the correct output.
 --%>
<%	out.println("Class: Server Side Development <br/>");
	out.println("Assignment: Module 2 Programming Assignment <br/>");
	out.println("Student Name: Chee Her <br/>");
%>
<%
	Date date = new Date();
	out.println("Current Date: " + date.toString() + " <br/><br/>");
%>
<% out.print("2x5= " + 2*5 + "<br/>"); %>  
<%
	String userAgent = request.getHeader("user-agent");
	out.println("<br/>User-agent: " + userAgent);
	out.write("\r\n <br/><br/>");
	out.write("Hello World!<br/>");
%>
</body>
</html>