<%-- 
    Document   : noteView
    Created on : Apr 23, 2023, 5:56:54 PM
    Author     : Walking Bag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="noteView">
            <input type="text" name="noteTitle" class="noteTitle" value="" placeholder="Enter a title..."/>
            <br/>
            <form action="noteInput" method="post">
                <textarea name="myNote" class="noteInput" placeholder="Lorem ipsum dol..."></textarea>
            </form>
        </div>
    </body>
</html>
