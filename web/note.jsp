<%-- 
    Document   : note
    Created on : Apr 23, 2023, 5:44:10 PM
    Author     : Walking Bag
--%>

<%@page import="note.noteDTO"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Note!</h1>
        <!--Later add servlet.-->
        <%! List<noteDTO> list;%>
        <%
            list = (List<noteDTO>) request.getAttribute("list");
            for (noteDTO note : list) {
                //I need to map my controller named "note" inside web.XML;
                out.print("<a href=note?action=view&id=" + note.getId() + ">"
                        + "<div class='noteList'>"
                        + "<div class='noteObject'>"
                        + "<div class='noteSmall-title'>" + note.getTitle() + "</div>"
                        + "<div class='noteSmall-body'>" + note.getNoteInfo() + "</div>"
                        + "<div class='noteSmall-timeStamp'>" + note.getTimestamp() + "</div>"
                        + "</div>" //noteObj
                        + "</div>");//noteList
            }

        %>
    </body>
</html>
