<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Directives provide directions and instructions to the container,
     telling it how to handle certain aspects of the JSP processing -->

<!--  The include directive is used to include a file during the translation phase.
      This directive tells the container to merge the content of other external files with the current
      JSP during the translation phase. Commonly external headers and footers are included into the page -->
<%@ include file = "relativeurl" %>
<jsp:directive.include file = "relative url" />

<!-- The taglib directive declares that your JSP page uses a set of custom tags,
identifies the location of the library, and provides means for identifying the custom tags in your JSP page. -->
<%@ taglib uri="uri" prefix = "prefixOfTag" %>
<jsp:directive.taglib uri = "uri" prefix = "prefixOfTag" />

<!-- The page directive is used to provide instructions to the container. -->
<%@ page attribute = "value" %>
<jsp:directive.page attribute = "value" />
<!--
buffer - Specifies a buffering model for the output stream.
<%@ page buffer = "none" %>
<%@ page buffer = "8kb" %>

autoFlush - controls the behavior of the servlet output buffer.
<%@ page autoFlush = "false" %>
<%@ page buffer = "16kb" autoFlush="true" %>

contentType - Defines the character encoding scheme.
<%@ page contentType = "text/html" %>
<%@ page contentType = "text/xml" %>
<%@ page contentType = "application/msword" %>
<%@ page contentType = "text/html:charset=ISO-8859-1" %>

errorPage - Defines the URL of another JSP that reports on Java unchecked runtime exceptions.
<%@ page errorPage = "MyErrorPage.jsp" %>

isErrorPage - Indicates if this JSP page is a URL specified by another JSP page's errorPage attribute.
<%@ page isErrorPage = "true" %>

extends - Specifies a superclass that the generated servlet must extend.
<%@ page extends = "somePackage.SomeClass" %>

import - Specifies a list of packages or classes for use in the JSP as the Java import statement does for Java classes.
<%@ page import = "java.sql.*,java.util.*"  %>

info - Defines a string that can be accessed with the servlet's getServletInfo() method.
<%@ page info = "This JSP Page Written By ZARA"  %>

isThreadSafe - Defines the threading model for the generated servlet.
<%@ page isThreadSafe = "false"  %>

language - Defines the programming language used in the JSP page.
<%@ page language = "java" %>

session - Specifies whether or not the JSP page participates in HTTP sessions
<%@ page session = "true" %>

isELIgnored - Specifies whether or not the EL expression within the JSP page will be ignored.
<%@ page isELIgnored = "false" %>

isScriptingEnabled - Determines if the scripting elements are allowed for use.
<%@ page isScriptingEnabled = "false" %>
-->


<html>
<head>
    <title>$Title$</title>
</head>
<body>

The time of the server is <%= new Date() %>

</body>
</html>
