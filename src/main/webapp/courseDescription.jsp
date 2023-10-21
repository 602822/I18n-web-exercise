<%--
  Created by IntelliJ IDEA.
  User: vefje
  Date: 10/16/2023
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Course Description</title>
</head>
<body>
<c:choose>
    <c:when test="${empty param.locale}">
        <fmt:setLocale value="no_NO"></fmt:setLocale>
    </c:when>
    <c:otherwise>
        <fmt:setLocale value="${param.locale}"></fmt:setLocale>
    </c:otherwise>
</c:choose>


<fmt:setBundle basename="no.hvl.dat152.i18n.LocalMessages"></fmt:setBundle>
<a href="${pageContext.request.contextPath}/">Home</a>
<h2>Course Description Page</h2>
<a href="courseDescription.jsp?locale=no_NO">No</a> | <a href="courseDescription.jsp?locale=en_EN">En</a>
<myTags:styleText borderColor="red" borderSize="2" width="400">
    <p> <fmt:message key="DAT152Description" ></fmt:message></p>
</myTags:styleText>


</body>
</html>
