<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Reemet
  Date: 02-Jun-19
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
$END$

The time of the server is <%= new Date() %>
<jsp:scriptlet>
   out.println(new Date());
</jsp:scriptlet>
</body>
</html>
