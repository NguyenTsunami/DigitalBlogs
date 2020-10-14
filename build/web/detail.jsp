<%-- 
    Document   : detail
    Created on : Sep 23, 2020, 6:24:16 PM
    Author     : thuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p class="text-3 text-blue mt-0 font-bold">${currentNews.title}</p>
        <img alt="title" src="${currentNews.images}" class="image-article"/>
        <p class="text-2 leading-1">${currentNews.content}</p>
        <hr>
        <p class="text-gray items-end text-right text-2">
            <img alt="comment" src="images/comment.gif"/>
            <img alt="timeicon" src="images/timeicon.gif"/>
            By ${currentNews.writer} | ${currentNews.getDatepub()}
        </p>
    </body>
</html>
