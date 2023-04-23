<%-- 
    Document   : note
    Created on : Apr 23, 2023, ??? PM
    Author     : Walking Bag
--%>
<%@page import="note.noteDTO"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Preview of Notetaking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/template.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            a, a:hover{
                text-decoration: none;
                color: black;   
            }
        </style>
    </head>
    <body>
        <div class="notes" id="app">

            <div class="noteSidebar">
                <div class="dropdown">
                    <button class="glyphicon glyphicon-align-justify btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Note Taking</a></li>
                        <li><a href="#">Timer</a></li>
                        <li><a href="#">User</a></li>
                    </ul>
                </div>
                <br>
                <button class="buttonAdd" type="button">Add note!</button>
                <div class="noteList">
                    <c:set var= "list" value="${requestScope.list}"></c:set>
                    <c:forEach var="note" items="${list}">
                        <a href="note?action=view&id=${note.id}">
                            <div class="noteList">
                                <div class="noteObject">
                                    <div class="noteSmall-title">${note.title}</div>
                                    <div class="noteSmall-body">${note.noteInfo}</div>
                                    <div class="noteSmall-timeStamp">${note.timestamp}</div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>

            <div class="noteView">
                <input type="text" name="noteTitle" class="noteTitle" value="" placeholder="Enter a title..."/>
                <br/>
                <form action="noteInput" method="post">
                    <textarea name="myNote" class="noteInput" placeholder="Lorem ipsum dol..."></textarea>
                </form>
            </div>

        </div>
    </body>
</html>
