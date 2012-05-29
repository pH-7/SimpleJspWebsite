<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String title = "Help Me";

request.setAttribute("title", title);
request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

<div class="center">

  <section class="row">

    <ul class="unstyled">
	  <li>You like this website?</li>
      <li>You want to help me for the time that I take to create software and open source scripts?</li>
      <li>You want my projects evolve and remains on the Web?</li>
      <li>You want to help with the cost of servers and the time that I take to do this?</li>
      <li>You use one of my scriptsVous love what I do?</li>
      <li>Etc...</li>
    </ul>
    
    <p class="underline italic"><strong>So you can support me in different ways:</strong></p>
    <p><strong>So, make a donation!</strong><br />
    You can give what you want ;-)</p>
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="3QDGGYCTF5V3A">
    <input type="image" src="https://www.paypalobjects.com/en_US/BE/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
    </form>
    
  <p><strong>Make a link site or article:</strong></p>
  <p>Put a link on your website, blog or forums in your signature.</p>

  <p><strong>Word of mouth:</strong></p>
  <p>Feel free to talk about this site and its products around you and around you.</p>

  <p><strong>Help me in what I do:</strong></p>
  <p>Feel free to contribute to my work (software, scripts, ...), give your opinions and reviews, etc..</p>

  <p>Thank you very much for your understanding!</p>
  
  <p class="italic gray">Contact me at: <a href="mailto:${emailAddress}">${emailAddress}</a></p>

  </section>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>