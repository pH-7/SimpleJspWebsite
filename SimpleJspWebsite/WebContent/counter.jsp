<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
 private static int counter = 0;
 %>

<%
request.setAttribute("pageTitle", "Counter");
request.setAttribute("pageHeading", "My Page Counter");
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

<%
  String visitor = ++counter + " Visitors";
%>

<p>The number of visitors is <%= visitor %></p>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>