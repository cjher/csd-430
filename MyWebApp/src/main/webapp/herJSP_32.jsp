<%--	
	Name: Chee Her
	Date: 6/10/2022
	Assignment: Module 3 Programming Assignment
	Purpose:
		Create a JSP that declares and initializes a String array. Use a for-each loop to display the array.
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList.*" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Module 3 Programming Assignment</title>
</head>
<body>
<%	
	out.println("Student Name: Chee Her </br>");
	out.println("Class: Server Side Development </br>");
	out.println("Assignment: Module 3 Programming Assignment </br>");
	out.println("Date: 6/10/2022 </br></br>");
%>
<%-- Declare and Initialize String Array --%>
<%
    String[] array = {"Hi", "I", "Am", "A", "Software", "Developer", "Student", "At", "Bellevue", "University"};
%>
<%-- For-each string in the array, display it --%>
<% 
    for (String item: array) {
        out.println(item + "</br>");
    }
%>
</body>
</html>