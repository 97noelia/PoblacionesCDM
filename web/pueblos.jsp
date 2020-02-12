<%-- 
    Document   : pueblos
    Created on : 10-feb-2020, 21:16:43
    Author     : DAW206
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Poblaciones">
            <%
                String provincia_activa = (String) request.getAttribute("provincia");
                ArrayList<String> pueblos = (ArrayList<String>) request.getAttribute("pueblos");
                ArrayList<String> provincias = (ArrayList<String>) request.getAttribute("provincias");
            %>
            <h1>Pueblos de Castilla-La Mancha</h1>
            <h2>Provincia Activa: <%=provincia_activa%> </h2>
            Provincias: <select name="provincia">
                <%for (int j = 0; j < provincias.size(); j++) {%>
                <option value="<%= provincias.get(j)%>"><%= provincias.get(j)%></option>
                <%}%>
            </select>
            <br>
            Pueblos: <select name="pueblo">
                <%for (int i = 0; i < pueblos.size(); i++) {%>
                <option value="<%= pueblos.get(i)%>"><%= pueblos.get(i)%></option>
                <%}%>
            </select>
        </form>
    </body>
</html>
