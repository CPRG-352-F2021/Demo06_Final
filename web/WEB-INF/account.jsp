<%-- 
    Document   : user
    Created on : 30-Sep-2015, 9:31:54 PM
    Author     : awarsyle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Information</title>
    </head>
    <body>
        <h1>${account.name}</h1>
        <ul>
            <li>username: ${account.username}</li>
            <li>password: ${account.password}</li>
            <li>email: <a href="mailto:${account.email}">${account.email}</a></li>
        </ul>
        <div>
            <!-- add a link to go back to root of application -->
            <a href=" <c:url value='/accounts' /> ">Back to Accounts Index</a>
        </div>
    </body>
</html>
