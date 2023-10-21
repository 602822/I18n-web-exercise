<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ page import="java.util.Date" %>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercise F25 - Globalization and Custom Tags</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
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

<h1>DAT152 <fmt:message key="title"></fmt:message> </h1>
	<div style="width:550px; word-wrap: break-word;">
		<a href="index.jsp?locale=no_NO">No</a> |	<a href="index.jsp?locale=en_EN">En</a>

		<p>
			<strong>
				<fmt:message key="dateLabel"></fmt:message>
			</strong>
			<jsp:useBean id="now" class="java.util.Date" />
			<fmt:message key="date">
				<fmt:param value="${now}"></fmt:param>
			</fmt:message>
		</p>

		<table>
			<tr>
				<th><fmt:message key="tableHeader"></fmt:message></th>
			</tr>
			<tr>
				<td><fmt:message key="r1Label"> </fmt:message></td>
				<td>DAT152</td>
			</tr>
			<tr>
				<td><fmt:message key="r2Label"></fmt:message></td>
				<td><fmt:message key="title"></fmt:message></td>
			</tr>
			<tr>
				<td> <fmt:message key="r3Label"></fmt:message></td>
				<td> <fmt:message key="month"></fmt:message></td>
			</tr>
			<tr>
             <td> <fmt:message key="r4Label"></fmt:message> </td>
				<td> <fmt:message key="lecturers"></fmt:message></td>
			</tr>
		</table>

		<a href="${pageContext.request.contextPath}/courseDescription.jsp"> <fmt:message key="courseDescriptionLink"></fmt:message></a>

		<h2> DAT152 <fmt:message key="h2"></fmt:message></h2>

		<table>

			<tr>
				<td><fmt:message key="table2DateLabel"></fmt:message>
					<fmt:parseDate value="11/12/2023" pattern="MM/dd/yyyy" var="parsedDate"></fmt:parseDate>
					<fmt:formatDate value="${parsedDate}" type="date" dateStyle="short"></fmt:formatDate> </td>

			</tr>
			<tr>
				<td><fmt:message key="table2DurationLabel"></fmt:message> <fmt:message key="timeDuration"></fmt:message></td>

			</tr>
			<tr>
				<td> <fmt:message key="table2TypeLabel"></fmt:message> <fmt:message key="examType"></fmt:message> </td>

			</tr>
			<tr>
				<td> <fmt:message key="table2PassMarkLabel"></fmt:message> <fmt:message key="examPassMark">
					<fmt:param>
						<fmt:formatNumber value="0.399" type="percent" maxIntegerDigits="2" minFractionDigits="1"></fmt:formatNumber>
					</fmt:param>
				</fmt:message>
				</td>

			</tr>
		</table>


	</div>
</body>
</html>