<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style> .head {

    background-color: #81C784;
    padding: 10px;
    color: #fff;
    text-align: center;

}
 .header {

     padding: 15px;
     font-weight: bold;
     font-size: 16px;
     border: none;
     border-radius: 3px;
     background-color: #F2F2F2;
     float: left;
     width: 23.5%;
     margin: 0 2px;

}
.p {

    color: darkred;
}
</style>
<body>

<h1 class="head">Calculator</h1>


<%
    String op_code = request.getParameter("op");
    Double p1 = Double.parseDouble(request.getParameter("p1"));
    Double p2 = Double.parseDouble(request.getParameter("p2"));
    Double r = 0.0;
    if (op_code.compareTo("add") == 0)
        r = p1 + p2;
    else if (op_code.compareTo("sub") == 0)
        r = p1 - p2;
    else if (op_code.compareTo("div") == 0) {
        if (p2 == 0)
            throw new ArithmeticException("You cannot divide by zero");
        r = p1 / p2;
    }else if (op_code.compareTo("mul") == 0)
        r = p1 * p2;
    else
        throw new Exception("Op code should be one the following: add, sub, div, mul!");
%>

<p class="header">
    <% out.println(p1 + " " + op_code + " " + p2 + " = " + r); %>

</p>
<br>
<br>
<br>
<br>
<a class="p" href="./browserInfo.jsp">Browser info</a>
</body>
</html>