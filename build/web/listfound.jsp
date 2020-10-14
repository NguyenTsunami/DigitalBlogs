<%-- 
    Document   : listfound
    Created on : Sep 23, 2020, 6:24:26 PM
    Author     : thuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p class="text-notify text-3 text-left font-serif">${notify}</p>

        <c:forEach var="news" items="${list}">
            <div class="row ma-5">
                <div class="col">
                    <div class="card pa-5">
                        <img src="${news.images}" class="card-image"/>
                        <span class="card-title text-3 text-blue">${news.title}</span>
                        <p class="card-content text-2">
                            ${news.content.substring(0,300).concat("...")}
                        </p>
                        <a href="homepage?main=detail&id=${news.id}" class="card-action text-2">See more...</a>
                    </div>
                </div>
            </div>
        </c:forEach>                   

        <br><hr>
        <div class="pagination flex justify-center text-2">
            <a class="${page-1<1?'inactiveLink':''}"
               href="homepage?main=listfound&keyword=${keyword}&page=${page-1}">&laquo;</a>
            <c:forEach var="p" begin="1" end="${totalPage}">
                <a class="${page eq p ? 'active' : ''}" 
                   href="homepage?main=listfound&keyword=${keyword}&page=${p}">${p}</a>
            </c:forEach>
            <a class="${page+1>totalPage?'inactiveLink':''}"
               href="homepage?main=listfound&keyword=${keyword}&page=${page+1}">&raquo;</a>
        </div>

    </body>
</html>
