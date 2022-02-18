<%--
  Created by IntelliJ IDEA.
  User: arzumanalakbarli
  Date: 2/18/22
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Browser info</title>
</head>
<body>
<%
    String client = request.getHeader("User-Agent");
%>

<%
    out.println("Client info: " + client);
%>

</body>
</html>
