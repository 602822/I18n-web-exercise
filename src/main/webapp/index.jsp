<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercise F25 - Globalization and Custom Tags</title>
</head>
<body>
<fmt:setLocale value="no_NO"></fmt:setLocale>
<fmt:setLocale value="${param.locale}"></fmt:setLocale>
<fmt:setBundle basename="no.hvl.dat152.i18n.LocalMessages"></fmt:setBundle>

<h1>DAT152 <fmt:message key="title"></fmt:message> </h1>
	<div style="width:550px; word-wrap: break-word;">
		<a href="index.jsp?locale=no_NO">No</a>	<a href="index.jsp?locale=en_EN">En</a>



	</div>
</body>
</html>