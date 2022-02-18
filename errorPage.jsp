<%--
  Created by IntelliJ IDEA.
  User: arzumanalakbarli
  Date: 2/18/22
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true"%>
<html>
<style>
.x {
   color: blue;
}
.z{
    background-color: red;
    padding: 10px;
    color: #fff;
    text-align: center;
}
<head>
    <title >Title</title>
</style>
</head>
<body>

<h1 class="x">Here’s your error</h1>
   <h2 class="z"> You have an ${pageContext.exception} error… </h2>
</body>
</html>
