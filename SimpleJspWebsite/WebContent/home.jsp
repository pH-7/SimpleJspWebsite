<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("pageHeading", "Welcome on my Website!");
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>


<div class="center">
  <p>Welcome today!</p>


</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>