<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="ua.kiyv.training.library.utils.constants.Attributes" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="/css/library.css">
    <fmt:setBundle basename="${sessionScope['bundleFile']}" var="msg"/>
    <title>home page</title>
</head>

<body>
<div class="container">
    <div class="row">
        <c:forEach var="book" items="${books}">
            <div class="col-lg-4">
                <div class="book-box">
                    <div class="book-id">${book.id}</div>
                    <div class="book-title">${book.title}</div>
                    <div class="book-year">${book.year}</div>
                    <div class="info-bottom">
                        <div class="detail-info"><a href="/library/user/book/${book.id}"><fmt:message
                                key="library.user.book.detail.info" bundle="${msg}"/></a></div>
                        <div class="book-image"><img src="/icons/${book.pictureId}.jpg" alt="picture"></div>
                        <div class="order">
                            <c:choose>
                                <c:when test="${book.avaliable}">
                                    <form action="/library/user/book/order" method="post"
                                          class="navbar-form button">
                                        <input type="hidden" name="command" value="openBook">
                                        <input type="hidden" name="bookId" value="${book.id}">
                                        <input type="submit" value="<fmt:message key="library.user.submit.order"/>"
                                               class="btn btn-success btn-lg">
                                    </form>
                                </c:when>
                                <c:otherwise>
                                    <fmt:message key="library.user.book.is.not.available"/>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>