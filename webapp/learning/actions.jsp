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

<!-- These actions use constructs in XML syntax to control the behavior of the servlet engine.
You can dynamically insert a file, reuse JavaBeans components, forward the user to another page,
or generate HTML for the Java plugin. -->

<!-- This action lets you insert files into the page being generated -->
<jsp:include page = "relative URL" flush = "true" />

<!-- Defines XML elements dynamically. -->
<jsp:element name="">
    <!-- Defines dynamically-defined XML element's attribute. -->
    <jsp:attribute name="" />

    <!-- Defines dynamically-defined XML element's body. -->
    <jsp:body></jsp:body>
</jsp:element>

<!-- Forwards the requester to a new page. -->
<jsp:forward page=""></jsp:forward>

<!-- Inserts the property of a JavaBean into the output. -->
<jsp:getProperty name="" property=""/>

<!-- Generates browser-specific code that makes an OBJECT or EMBED tag for the Java plugin. -->
<jsp:plugin type='applet' name="" />



<!-- It first searches for an existing object utilizing the id and scope variables.
If an object is not found, it then tries to create the specified object. -->
<jsp:useBean id = "name" class = "package.class" />

<!-- The setProperty action sets the properties of a Bean.
The Bean must have been previously defined before this action. It can be used
inside and outside of bean ation -->
<jsp:setProperty name = "myName" property = "someProperty"/>

<!-- Used to write template text in JSP pages and documents. -->
<jsp:text></jsp:text>


The time of the server is <%= new Date() %>

</body>
</html>
