<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
        
        <div>
            
            <% 
                if(request.getMethod().equals("POST")){
            %>
            
            <jsp:useBean id='myDB' class='her_11.CreateDBMySQL' />

            <%
                out.println("<h2>Team you selected.</h2>");
                
                java.sql.ResultSet resultSet;
                
                String team = request.getParameter("Team");
                
                resultSet = myDB.getResults("SELECT * FROM Wins_WK_06_MySQL WHERE Team = '" + team + "' OR LoserTeam = '" + team + "'");
                
                try{
                    out.println("<table border='1'>");
                    
                    while(resultSet.next()){
                        out.println("<tr>");
                        
                        for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
                            out.println("<td>");
                            out.print((resultSet.getString(i)).trim());
                            out.println("</td>");
                        }
                        
                        out.println("</tr>");
                    }
                    
                    out.println("</table>");
                }
                catch(Exception e){
                    out.println("<b>Print of results failed.</b><br />");
                }
                
                myDB.closeConnection();

//--------------------------------------------------------------------------

                out.println("<h2>All teams.</h2>");
                
                resultSet = myDB.getResults("SELECT * FROM Wins_WK_06_MySQL");
                
                try{
                    out.println("<table border='5'>");
                    
                    while(resultSet.next()){
                        out.println("<tr>");
                        
                        for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
                            out.println("<td>");
                            out.print((resultSet.getString(i)).trim());
                            out.println("</td>");
                        }
                        
                        out.println("</tr>");
                    }
                    
                    out.println("</table>");
                }
                catch(Exception e){
                    out.println("<b>Print of results failed.</b><br />");
                }
                
                myDB.closeConnection();
            %>
            
            <h2>POST</h2>
            
            <form method='post' action='OpenTeams.jsp'>
                <label>Find a Different Team</label>&nbsp;&nbsp;&nbsp;
                <input type='text' name='Team' size='40' maxlength='40'/>
                <input type='submit' />
            </form>
            
            <%  
            }
            %>

            <%
                if(request.getMethod().equals("GET")){
            %>
            
            <h2>GET</h2>
            
            <form method='post' action='OpenTeams.jsp'>
                <label>Enter Your Favorite World Series Team</label>&nbsp;&nbsp;&nbsp;
                <input type='text' name='Team' size='40' maxlength='40'/>
                <input type='submit' />
            </form>
            
             <h2>POST</h2>
            
            <form method='post' action='OpenTeams.jsp'>
                <label>Find a Different Team.</label>&nbsp;&nbsp;&nbsp;
                <input type='text' name='Team' size='40' maxlength='40'/>
                <input type='submit' />
            </form>
            
            <%
            }
            %>
        </div>
        
    </body>
</html>



java.sql.ResultSet resultSet;
        
        try{
            out.println("<table border='1'>");
            
            while(resultSet.next()){
                out.println("<tr>");
                
                for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
                    out.println("<td>");
                    out.print((resultSet.getString(i)).trim());
                    out.println("</td>");
                }
                
                out.println("</tr>");
            }
            
            out.println("</table>");
        }
        catch(Exception e){
            out.println("<b>Print of results failed.</b><br />");
        }
        
        out.println("<h2>All Available Teams: </h2>");
               
        try{
            out.println("<table border='5'>");
            
            while(resultSet.next()){
                out.println("<tr>");
                
                for(int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++){
                    out.println("<td>");
                    out.print((resultSet.getString(i)).trim());
                    out.println("</td>");
                }
                
                out.println("</tr>");
            }
            
            out.println("</table>");
        }
        catch(Exception e){
            out.println("<b>Print of results failed.</b><br />");
        }    
        
        
        <div>
            <h2>POST</h2>
            
            <% 
                if(request.getMethod().equals("POST")){
            %>
            
            <% String selectedTeam = request.getParameter("Team"); %>
            <lotsOfData:tableMySQL />

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
        </div>