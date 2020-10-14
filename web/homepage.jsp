<%-- 
    Document   : index
    Created on : Sep 16, 2020, 10:04:39 PM
    Author     : thuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Digital News</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./css/style.css" />
    </head>
    <body>
        <!--Header-->
        <div>
            <!--Pre-header-->
            <div class="pre-header">
            </div>
            <!--Banner-->
            <div class="banner">
                <div class="container">
                    <p class="pt-2 pl-5 text-white text-4 font-bold mt-0">My Digital News</p>
                </div>
            </div>
            <!--Navigation-->
            <nav class="navigation">
                <div class="container">
                    <ul class="list-reset my-0 py-2">
                        <li class="text-white pl-5 font-bold">
                            <a href="homepage" class="text-white in-underline">News</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

        <!--Content-->
        <div class="wrap-content">
            <div class="container flex">
                <!--Left--> 
                <div class="left pa-5">
                    <c:if test="${main eq 'detail'}">
                        <jsp:include page="detail.jsp"/>
                    </c:if>
                    <c:if test="${main eq 'listfound'}">
                        <jsp:include page="listfound.jsp"/>
                    </c:if>
                </div>

                <!--Right-->  
                <div class="right py-5 pl-3 pr-5">
                    <!--The most recent news-->
                    <div>
                        <p class="text-3 font-bold mt-0 text-blue">Digital News</p>
                        <p class="text-2 leading-1">${mostRecentNews.content.substring(0,300).concat("...")}</p>
                    </div>
                    <!--Search news by new title-->
                    <div>
                        <p class="text-3 font-bold text-blue">Search</p>
                        <form class="flex" method="GET" action="homepage">
                            <input type="text" name="main" value="listfound" hidden>
                            <input type="text" class="border-dotted search text-2" name="keyword">
                            <input type="submit" class="text-blue border-none bg-none" value="Go">
                        </form>
                    </div>
                    <!--Top 5 most recent news-->
                    <div>
                        <p class="text-3 font-bold text-blue">Last Articles</p>
                        <ul class="list-reset">
                            <c:forEach var="article" items="${top5}">
                                <li class="mt-2">
                                    <a href="homepage?id=${article.id}" class="text-2 text-blue underline">${article.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--Footer-->
        <footer class="footer"> 
        </footer>
    </body>
</html>
