<%-- 
    Document   : users
    Created on : 29-Sep-2015, 9:56:32 PM
    Author     : awarsyle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounts</title>
    </head>
    <body>
        <h1>Accounts</h1>

        <h3>Page ${page}</h3>

        <!-- display a table of all of the accounts -->
        <table cellpadding="7" border="1">
            <tr>
                <th>Name</th>
                <th>Account Link</th>
            </tr>
            <c:forEach var="user" items="${accounts}">
                <tr>
                    <td>${user.name}</td>
                    <td>
                        <a href="
                           <c:url value='/account'>
                               <c:param name='username' value='${user.username}' />
                           </c:url>
                           ">View Account</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <!-- handle paging: forward/back -->
        <c:if test="${page > 1}">
            <a href="accounts?page=${page - 1}">&lt; Back</a> | 
        </c:if>
        <c:if test="${page < maxPage}">
            <a href="accounts?page=${page + 1}">Next &gt;</a>
        </c:if>




    </body>
</html>
