<%-- 
    Document   : PopularPost
    Created on : May 28, 2024, 1:28:46 PM
    Author     : DUC MINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Popular Posts</title>
    </head>
    <body>
        <h1>Popular Posts</h1>
    <c:forEach var="post" items="${popularPosts}">
        <div class="post">
            <h2>${post.title}</h2>
            <p>${post.description}</p>
            <p>Location: ${post.location}</p>
            <p>Skills: ${post.skill}</p>
            <p>Budget: ${post.budget}</p>
            <p>Posted on: ${post.datePost}</p>
        </div>
    </c:forEach>
    </body>
</html>
