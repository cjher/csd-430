<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@	taglib prefix="lotsOfData" uri="WEB-INF/taglib.tld" %>

<!--
 Name: Chee Her
 Date: 7/23/2022
 Bellevue University
 CSD430-312A Server Side Development
 Module 11
-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Baseball Teams</title>
    </head>
    <body>
        <h1>Select Team</h1>
        
        <input type="button" value="Go back!" onclick="history.back()">        
        <h2>POST</h2>
            
        <% 
            if(request.getMethod().equals("POST")){
        %>
        <% String selectedTeam = request.getParameter("Team"); %>
        <lotsOfData:tableMySQL="selectedTeam" />
        <%
                }
            %>
        <h2>GET</h2>
            
            <%
                if(request.getMethod().equals("GET")){
            %>
            
            <form method='post' action='OpenTeams.jsp'>
                <label>Enter your favorite World Series Team</label>&nbsp;&nbsp;&nbsp;
                <input type='text' name='Team' size='40' maxlength='40'/>
                <input type='submit'/>
            </form>
            
            <%
            }
            %>
    </body>
</html>