<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String title = "Contact Us";
request.setAttribute("pageTitle", title);
request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

	<p>Contact me at <a href="mailto:${emailAddress}">${emailAddress}</a></p>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>