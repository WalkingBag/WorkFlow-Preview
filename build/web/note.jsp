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
            <c:set var= "list" value="${requestScope.list}"></c:set>
            <c:forEach var="note" items="${list}">
                    <tbody>
                        <tr>
                            <td>${note.title}</td>
                            <td>${note.noteInfo}</td>
                            <td>${note.timestamp}</td>
                        </tr>
                    </tbody>
            </c:forEach>
    </body>
</html>
