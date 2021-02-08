<%-- 
    Document   : index
    Created on : 08-feb-2021, 16:37:01
    Author     : Manuel
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! Date mydate = new Date();%> 
        <p><%out.write(new SimpleDateFormat("dd-MMM-yyyy").format(mydate));%></p>
        <p><%out.write(new SimpleDateFormat("HH:mm:ss").format(mydate));%></p>
        <%  if (Calendar.HOUR_OF_DAY >= 5 && Calendar.HOUR_OF_DAY <= 12) {
                out.write("Buenos dias");
            } else {
                if (Calendar.HOUR_OF_DAY >= 12 && Calendar.HOUR_OF_DAY <= 20) {
                    out.write("Buenas tardes");
                } else {
                    out.write("Buenas noches");
                }
            }

        %>
    </body>
</html>
