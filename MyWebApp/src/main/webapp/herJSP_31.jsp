<%--	
	Name: Chee Her
	Date: 6/10/2022
	Assignment: Module 3 Programming Assignment
	Purpose:
		Create a JSP that declares and initializes an int array. Then, using loop iteration and selection, 
			go through the array displaying each element along with identifying even and odd values.
		
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
<%
	int n = 8;
	int array[] = {7, 12, 48, 76, 21, 65, 2, 33};
%>
<%-- Display the original numbers in the array --%>
<%
	out.println("Display Original Array List <br/>");
	out.println(Arrays.toString(array)); 
	out.println("<br/><br/>");
%>
<%--
	Split array into Even and Odd arrays
	https://www.geeksforgeeks.org/java-program-to-store-even-odd-elements-of-an-array-into-separate-arrays/
--%>
<%
	int evens = 0;
	int odds = 0;
	for (int i = 0; i < n; i++) {
		if(array[i] % 2 == 0) 
			evens++;
		else 
			odds++;
	}
%>
<% 
	int[] even = new int[evens];
	int[] odd = new int[odds];
	
	int j = 0, k = 0;
    for (int i = 0; i < n; i++) {
        if (array[i] % 2 == 0)
            even[j++] = array[i];
        else
            odd[k++] = array[i];
    }
%>
<%-- Sort evens and odd numbers in ascending order --%>
<% 
	Arrays.sort(even);
	Arrays.sort(odd);
%>
<%-- Display Even and Odd Numbers --%>
<%
	out.println("Display Even Numbers: <br/>");
	out.println(Arrays.toString(even));
	out.println("<br/><br/>");
	out.println("Display Odd Numbers: <br/>");
	out.println(Arrays.toString(odd));	
%>
</body>
</html>